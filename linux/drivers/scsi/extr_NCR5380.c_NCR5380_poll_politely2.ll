; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_poll_politely2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_poll_politely2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NCR5380_hostdata = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NCR5380_hostdata*, i32, i32, i32, i32, i32, i32, i64)* @NCR5380_poll_politely2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_poll_politely2(%struct.NCR5380_hostdata* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.NCR5380_hostdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.NCR5380_hostdata* %0, %struct.NCR5380_hostdata** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  %20 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %10, align 8
  %21 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %17, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %19, align 8
  br label %26

26:                                               ; preds = %44, %8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @NCR5380_read(i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %83

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @NCR5380_read(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %16, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %83

42:                                               ; preds = %34
  %43 = call i32 (...) @cpu_relax()
  br label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %18, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %18, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %26, label %48

48:                                               ; preds = %44
  %49 = call i64 (...) @irqs_disabled()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i64 (...) @in_interrupt()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %83

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i64, i64* %19, align 8
  %60 = call i64 @time_is_after_jiffies(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @NCR5380_read(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %83

71:                                               ; preds = %62
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @NCR5380_read(i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %83

79:                                               ; preds = %71
  br label %58

80:                                               ; preds = %58
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %78, %70, %54, %41, %33
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
