; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_log_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i64, i32, i64 }
%struct.vhost_log = type { i32, i32 }
%struct.iovec = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_log_write(%struct.vhost_virtqueue* %0, %struct.vhost_log* %1, i32 %2, i64 %3, %struct.iovec* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_virtqueue*, align 8
  %9 = alloca %struct.vhost_log*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %8, align 8
  store %struct.vhost_log* %1, %struct.vhost_log** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store %struct.iovec* %4, %struct.iovec** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = call i32 (...) @smp_wmb()
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %19 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %29 = load %struct.iovec*, %struct.iovec** %12, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i64 %31
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iovec*, %struct.iovec** %12, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i64 %37
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @log_write_hva(%struct.vhost_virtqueue* %28, i64 %34, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %103

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %23

50:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %103

51:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %98, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = load %struct.vhost_log*, %struct.vhost_log** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %57, i64 %59
  %61 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @min(i32 %62, i64 %63)
  store i64 %64, i64* %16, align 8
  %65 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %66 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vhost_log*, %struct.vhost_log** %9, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %68, i64 %70
  %72 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @log_write(i32 %67, i32 %73, i64 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %56
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %103

80:                                               ; preds = %56
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %11, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %88 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %93 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @eventfd_signal(i64 %94, i32 1)
  br label %96

96:                                               ; preds = %91, %86
  store i32 0, i32* %7, align 4
  br label %103

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %52

101:                                              ; preds = %52
  %102 = call i32 (...) @BUG()
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %96, %78, %50, %44
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @log_write_hva(%struct.vhost_virtqueue*, i64, i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @log_write(i32, i32, i64) #1

declare dso_local i32 @eventfd_signal(i64, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
