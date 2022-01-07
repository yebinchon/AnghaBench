; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_conn_back_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_conn_back_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_mapping = type { i32, i32, i32, i32, i32, %struct.pvcalls_data, %struct.pvcalls_data_intf* }
%struct.pvcalls_data = type { i32 }
%struct.pvcalls_data_intf = type { i32, i32, i32 }
%struct.msghdr = type { i32, i32 }
%struct.kvec = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock_mapping*)* @pvcalls_conn_back_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvcalls_conn_back_write(%struct.sock_mapping* %0) #0 {
  %2 = alloca %struct.sock_mapping*, align 8
  %3 = alloca %struct.pvcalls_data_intf*, align 8
  %4 = alloca %struct.pvcalls_data*, align 8
  %5 = alloca %struct.msghdr, align 4
  %6 = alloca [2 x %struct.kvec], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock_mapping* %0, %struct.sock_mapping** %2, align 8
  %12 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %13 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %12, i32 0, i32 6
  %14 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %13, align 8
  store %struct.pvcalls_data_intf* %14, %struct.pvcalls_data_intf** %3, align 8
  %15 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %16 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %15, i32 0, i32 5
  store %struct.pvcalls_data* %16, %struct.pvcalls_data** %4, align 8
  %17 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %3, align 8
  %18 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %3, align 8
  %21 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @virt_mb()
  %24 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %25 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @XEN_FLEX_RING_SIZE(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @pvcalls_queued(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %168

35:                                               ; preds = %1
  %36 = call i32 @memset(%struct.msghdr* %5, i32 0, i32 8)
  %37 = load i32, i32* @MSG_DONTWAIT, align 4
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pvcalls_mask(i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @pvcalls_mask(i32 %44, i32 %45)
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %35
  %49 = load %struct.pvcalls_data*, %struct.pvcalls_data** %4, align 8
  %50 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @pvcalls_mask(i32 %52, i32 %53)
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %57 = getelementptr inbounds %struct.kvec, %struct.kvec* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 16
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  %62 = load i32, i32* @READ, align 4
  %63 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @iov_iter_kvec(i32* %61, i32 %62, %struct.kvec* %63, i32 1, i32 %64)
  br label %100

66:                                               ; preds = %35
  %67 = load %struct.pvcalls_data*, %struct.pvcalls_data** %4, align 8
  %68 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @pvcalls_mask(i32 %70, i32 %71)
  %73 = add nsw i32 %69, %72
  %74 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 16
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @pvcalls_mask(i32 %77, i32 %78)
  %80 = sub nsw i32 %76, %79
  %81 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pvcalls_data*, %struct.pvcalls_data** %4, align 8
  %84 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %90 = getelementptr inbounds %struct.kvec, %struct.kvec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %94 = getelementptr inbounds %struct.kvec, %struct.kvec* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  %96 = load i32, i32* @READ, align 4
  %97 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @iov_iter_kvec(i32* %95, i32 %96, %struct.kvec* %97, i32 2, i32 %98)
  br label %100

100:                                              ; preds = %66, %48
  %101 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %102 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %101, i32 0, i32 1
  %103 = call i32 @atomic_set(i32* %102, i32 0)
  %104 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %105 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @inet_sendmsg(i32 %106, %struct.msghdr* %5, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @EAGAIN, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116, %100
  %121 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %122 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %121, i32 0, i32 1
  %123 = call i32 @atomic_inc(i32* %122)
  %124 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %125 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %124, i32 0, i32 2
  %126 = call i32 @atomic_inc(i32* %125)
  br label %127

127:                                              ; preds = %120, %116, %113
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %168

133:                                              ; preds = %127
  %134 = call i32 (...) @virt_wmb()
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %3, align 8
  %140 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  br label %152

141:                                              ; preds = %133
  %142 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %3, align 8
  %143 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %142, i32 0, i32 2
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %3, align 8
  %148 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %3, align 8
  %150 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %141, %137
  %153 = call i32 (...) @virt_wmb()
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %161 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %160, i32 0, i32 1
  %162 = call i32 @atomic_inc(i32* %161)
  br label %163

163:                                              ; preds = %159, %152
  %164 = load %struct.sock_mapping*, %struct.sock_mapping** %2, align 8
  %165 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @notify_remote_via_irq(i32 %166)
  br label %168

168:                                              ; preds = %163, %132, %34
  ret void
}

declare dso_local i32 @virt_mb(...) #1

declare dso_local i32 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i32 @pvcalls_queued(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @pvcalls_mask(i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @inet_sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @virt_wmb(...) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
