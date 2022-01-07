; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_log_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_log_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i64, i64, i32, i32 }
%struct.iovec = type { i32, i64 }

@VHOST_ACCESS_WO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, i64, i64)* @log_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_used(%struct.vhost_virtqueue* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x %struct.iovec], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %12 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %17 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %20 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @log_write(i32 %18, i64 %23, i64 %24)
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %28 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %29 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds [64 x %struct.iovec], [64 x %struct.iovec]* %8, i64 0, i64 0
  %35 = load i32, i32* @VHOST_ACCESS_WO, align 4
  %36 = call i32 @translate_desc(%struct.vhost_virtqueue* %27, i64 %32, i64 %33, %struct.iovec* %34, i32 64, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [64 x %struct.iovec], [64 x %struct.iovec]* %8, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x %struct.iovec], [64 x %struct.iovec]* %8, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 16
  %58 = call i32 @log_write_hva(%struct.vhost_virtqueue* %47, i64 %52, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %42

67:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61, %39, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @log_write(i32, i64, i64) #1

declare dso_local i32 @translate_desc(%struct.vhost_virtqueue*, i64, i64, %struct.iovec*, i32, i32) #1

declare dso_local i32 @log_write_hva(%struct.vhost_virtqueue*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
