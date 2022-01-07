; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.sock_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MSG_CONFIRM = common dso_local global i32 0, align 4
@MSG_DONTROUTE = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@PVCALLS_FRONT_MAX_SPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock_mapping*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @MSG_CONFIRM, align 4
  %18 = load i32, i32* @MSG_DONTROUTE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MSG_EOR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MSG_OOB, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %16, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %120

29:                                               ; preds = %3
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %30)
  store %struct.sock_mapping* %31, %struct.sock_mapping** %8, align 8
  %32 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %33 = call i64 @IS_ERR(%struct.sock_mapping* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.sock_mapping* %36)
  store i32 %37, i32* %4, align 4
  br label %120

38:                                               ; preds = %29
  %39 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %40 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @MSG_DONTWAIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %49 = call i32 @pvcalls_front_write_todo(%struct.sock_mapping* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %53 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = call i32 @pvcalls_exit_sock(%struct.socket* %56)
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %120

60:                                               ; preds = %47, %38
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @INT_MAX, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @INT_MAX, align 8
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %106, %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %71 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %75 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %78 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @__write_ring(i32 %73, i32* %76, i32* %78, i64 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %67
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %92 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @notify_remote_via_irq(i32 %94)
  br label %96

96:                                               ; preds = %83, %67
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i64, i64* %7, align 8
  %101 = icmp ugt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @PVCALLS_FRONT_MAX_SPIN, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %67

107:                                              ; preds = %102, %99, %96
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = load %struct.sock_mapping*, %struct.sock_mapping** %8, align 8
  %114 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.socket*, %struct.socket** %5, align 8
  %118 = call i32 @pvcalls_exit_sock(%struct.socket* %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %112, %51, %35, %26
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvcalls_front_write_todo(%struct.sock_mapping*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

declare dso_local i32 @__write_ring(i32, i32*, i32*, i64) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
