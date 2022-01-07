; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pvcalls_request = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.pvcalls_fedata = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.sockpass_mapping = type { i64, %struct.TYPE_15__*, i32, i32, %struct.pvcalls_fedata*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.sockpass_mapping* }
%struct.xen_pvcalls_response = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.sockaddr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__pvcalls_back_accept = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pvcalls_wq\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@pvcalls_pass_sk_data_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xen_pvcalls_request*)* @pvcalls_back_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_bind(%struct.xenbus_device* %0, %struct.xen_pvcalls_request* %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xen_pvcalls_request*, align 8
  %5 = alloca %struct.pvcalls_fedata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockpass_mapping*, align 8
  %8 = alloca %struct.xen_pvcalls_response*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.xen_pvcalls_request* %1, %struct.xen_pvcalls_request** %4, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %10)
  store %struct.pvcalls_fedata* %11, %struct.pvcalls_fedata** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sockpass_mapping* @kzalloc(i32 40, i32 %12)
  store %struct.sockpass_mapping* %13, %struct.sockpass_mapping** %7, align 8
  %14 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %15 = icmp eq %struct.sockpass_mapping* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %130

19:                                               ; preds = %2
  %20 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %21 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %20, i32 0, i32 6
  %22 = load i32, i32* @__pvcalls_back_accept, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %25 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %24, i32 0, i32 5
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load i32, i32* @WQ_UNBOUND, align 4
  %28 = call i64 @alloc_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27, i32 1)
  %29 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %30 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %32 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %130

38:                                               ; preds = %19
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %42 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %41, i32 0, i32 1
  %43 = call i32 @sock_create(i32 %39, i32 %40, i32 0, %struct.TYPE_15__** %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %130

47:                                               ; preds = %38
  %48 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %49 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %52 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = bitcast i32* %54 to %struct.sockaddr*
  %56 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %57 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @inet_bind(%struct.TYPE_15__* %50, %struct.sockaddr* %55, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %130

65:                                               ; preds = %47
  %66 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %67 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %68 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %67, i32 0, i32 4
  store %struct.pvcalls_fedata* %66, %struct.pvcalls_fedata** %68, align 8
  %69 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %70 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %75 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %77 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %76, i32 0, i32 1
  %78 = call i32 @down(i32* %77)
  %79 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %80 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %79, i32 0, i32 2
  %81 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %82 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %85 = call i32 @radix_tree_insert(i32* %80, i32 %83, %struct.sockpass_mapping* %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %87 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %86, i32 0, i32 1
  %88 = call i32 @up(i32* %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %65
  br label %130

92:                                               ; preds = %65
  %93 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %94 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 @write_lock_bh(i32* %98)
  %100 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %101 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %108 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %110 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %111 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store %struct.sockpass_mapping* %109, %struct.sockpass_mapping** %115, align 8
  %116 = load i32, i32* @pvcalls_pass_sk_data_ready, align 4
  %117 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %118 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 %116, i32* %122, align 4
  %123 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %124 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %123, i32 0, i32 1
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = call i32 @write_unlock_bh(i32* %128)
  br label %130

130:                                              ; preds = %92, %91, %64, %46, %35, %16
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %130
  %134 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %135 = icmp ne %struct.sockpass_mapping* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %138 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = icmp ne %struct.TYPE_15__* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %143 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %142, i32 0, i32 1
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = call i32 @sock_release(%struct.TYPE_15__* %144)
  br label %146

146:                                              ; preds = %141, %136, %133
  %147 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %148 = icmp ne %struct.sockpass_mapping* %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %151 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %156 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @destroy_workqueue(i64 %157)
  br label %159

159:                                              ; preds = %154, %149, %146
  %160 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %161 = call i32 @kfree(%struct.sockpass_mapping* %160)
  br label %162

162:                                              ; preds = %159, %130
  %163 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %164 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %163, i32 0, i32 0
  %165 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %166 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_16__* %164, i32 %168)
  store %struct.xen_pvcalls_response* %170, %struct.xen_pvcalls_response** %8, align 8
  %171 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %172 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %175 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %177 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %180 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %182 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %187 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %192 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  ret i32 0
}

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local %struct.sockpass_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @sock_create(i32, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @inet_bind(%struct.TYPE_15__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.sockpass_mapping*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @sock_release(%struct.TYPE_15__*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @kfree(%struct.sockpass_mapping*) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
