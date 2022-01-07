; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MSG_CMSG_CLOEXEC = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock_mapping*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @MSG_CMSG_CLOEXEC, align 4
  %14 = load i32, i32* @MSG_ERRQUEUE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MSG_OOB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MSG_TRUNC, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %12, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %116

25:                                               ; preds = %4
  %26 = load %struct.socket*, %struct.socket** %6, align 8
  %27 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %26)
  store %struct.sock_mapping* %27, %struct.sock_mapping** %11, align 8
  %28 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %29 = call i64 @IS_ERR(%struct.sock_mapping* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %33 = call i32 @PTR_ERR(%struct.sock_mapping* %32)
  store i32 %33, i32* %5, align 4
  br label %116

34:                                               ; preds = %25
  %35 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %36 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %41 = call i64 @XEN_FLEX_RING_SIZE(i32 %40)
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %45 = call i64 @XEN_FLEX_RING_SIZE(i32 %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %43, %34
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MSG_DONTWAIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %54 = call i32 @pvcalls_front_read_todo(%struct.sock_mapping* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %67

59:                                               ; preds = %57
  %60 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %61 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %65 = call i32 @pvcalls_front_read_todo(%struct.sock_mapping* %64)
  %66 = call i32 @wait_event_interruptible(i32 %63, i32 %65)
  br label %47

67:                                               ; preds = %57
  %68 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %69 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %73 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @__read_ring(i32 %71, i32* %74, i32* %76, i64 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %67
  %83 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %84 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @notify_remote_via_irq(i32 %86)
  br label %88

88:                                               ; preds = %82, %67
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @MSG_DONTWAIT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32 [ %98, %96 ], [ 0, %99 ]
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %88
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @ENOTCONN, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %107, %102
  %109 = load %struct.sock_mapping*, %struct.sock_mapping** %11, align 8
  %110 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load %struct.socket*, %struct.socket** %6, align 8
  %114 = call i32 @pvcalls_exit_sock(%struct.socket* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %108, %31, %22
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i32 @pvcalls_front_read_todo(%struct.sock_mapping*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__read_ring(i32, i32*, i32*, i64, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
