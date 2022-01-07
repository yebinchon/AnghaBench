; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.socket = type { i64 }
%struct.sockaddr = type { i64 }
%struct.pvcalls_bedata = type { %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sock_mapping = type { %struct.socket*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@pvcalls_front_dev = common dso_local global %struct.TYPE_12__* null, align 8
@PVCALLS_CONNECT = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pvcalls_bedata*, align 8
  %11 = alloca %struct.sock_mapping*, align 8
  %12 = alloca %struct.xen_pvcalls_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sock_mapping* null, %struct.sock_mapping** %11, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_STREAM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %4
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %189

31:                                               ; preds = %22
  %32 = load %struct.socket*, %struct.socket** %6, align 8
  %33 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %32)
  store %struct.sock_mapping* %33, %struct.sock_mapping** %11, align 8
  %34 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %35 = call i64 @IS_ERR(%struct.sock_mapping* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %39 = call i32 @PTR_ERR(%struct.sock_mapping* %38)
  store i32 %39, i32* %5, align 4
  br label %189

40:                                               ; preds = %31
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pvcalls_front_dev, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %42)
  store %struct.pvcalls_bedata* %43, %struct.pvcalls_bedata** %10, align 8
  %44 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %45 = call i32 @alloc_active_ring(%struct.sock_mapping* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = call i32 @pvcalls_exit_sock(%struct.socket* %49)
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %189

52:                                               ; preds = %40
  %53 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %54 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %53, i32 0, i32 3
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %57 = call i32 @get_request(%struct.pvcalls_bedata* %56, i32* %14)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %62 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %61, i32 0, i32 3
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %65 = call i32 @free_active_ring(%struct.sock_mapping* %64)
  %66 = load %struct.socket*, %struct.socket** %6, align 8
  %67 = call i32 @pvcalls_exit_sock(%struct.socket* %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  br label %189

69:                                               ; preds = %52
  %70 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %71 = call i32 @create_active(%struct.sock_mapping* %70, i32* %16)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %76 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %75, i32 0, i32 3
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %79 = call i32 @free_active_ring(%struct.sock_mapping* %78)
  %80 = load %struct.socket*, %struct.socket** %6, align 8
  %81 = call i32 @pvcalls_exit_sock(%struct.socket* %80)
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %5, align 4
  br label %189

83:                                               ; preds = %69
  %84 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %85 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %84, i32 0, i32 4
  %86 = load i32, i32* %14, align 4
  %87 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__* %85, i32 %86)
  store %struct.xen_pvcalls_request* %87, %struct.xen_pvcalls_request** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %90 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @PVCALLS_CONNECT, align 4
  %92 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %93 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %95 = ptrtoint %struct.sock_mapping* %94 to i64
  %96 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %97 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i64 %95, i64* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %102 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %107 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 4
  %110 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %111 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %115 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  store i32 %113, i32* %117, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %120 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  store i32 %118, i32* %122, align 8
  %123 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %12, align 8
  %124 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %129 = call i32 @memcpy(i32 %127, %struct.sockaddr* %128, i32 8)
  %130 = load %struct.socket*, %struct.socket** %6, align 8
  %131 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %132 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %131, i32 0, i32 0
  store %struct.socket* %130, %struct.socket** %132, align 8
  %133 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %134 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %139 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %138, i32 0, i32 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_13__* %139, i32 %140)
  %142 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %143 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %142, i32 0, i32 3
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %83
  %148 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %149 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @notify_remote_via_irq(i32 %150)
  br label %152

152:                                              ; preds = %147, %83
  %153 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %154 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %157 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %156, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @READ_ONCE(i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @wait_event(i32 %155, i32 %167)
  %169 = call i32 (...) @smp_rmb()
  %170 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %171 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %170, i32 0, i32 0
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %179 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %10, align 8
  %180 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %179, i32 0, i32 0
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  store i32 %178, i32* %185, align 4
  %186 = load %struct.socket*, %struct.socket** %6, align 8
  %187 = call i32 @pvcalls_exit_sock(%struct.socket* %186)
  %188 = load i32, i32* %15, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %152, %74, %60, %48, %37, %28
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @alloc_active_ring(%struct.sock_mapping*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_active_ring(%struct.sock_mapping*) #1

declare dso_local i32 @create_active(%struct.sock_mapping*, i32*) #1

declare dso_local %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
