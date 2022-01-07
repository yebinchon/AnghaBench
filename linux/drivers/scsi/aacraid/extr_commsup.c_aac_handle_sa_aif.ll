; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_handle_sa_aif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_handle_sa_aif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aac_dev = type { i32 }
%struct.fib = type { i32 }

@MUnit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c" AIF not cleared by firmware - %d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, %struct.fib*)* @aac_handle_sa_aif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_handle_sa_aif(%struct.aac_dev* %0, %struct.fib* %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fib*, %struct.fib** %4, align 8
  %8 = getelementptr inbounds %struct.fib, %struct.fib* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 130
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 130, i32* %6, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.fib*, %struct.fib** %4, align 8
  %15 = getelementptr inbounds %struct.fib, %struct.fib* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 131
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 131, i32* %6, align 4
  br label %52

20:                                               ; preds = %13
  %21 = load %struct.fib*, %struct.fib** %4, align 8
  %22 = getelementptr inbounds %struct.fib, %struct.fib* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 128, i32* %6, align 4
  br label %51

27:                                               ; preds = %20
  %28 = load %struct.fib*, %struct.fib** %4, align 8
  %29 = getelementptr inbounds %struct.fib, %struct.fib* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 129
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 129, i32* %6, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.fib*, %struct.fib** %4, align 8
  %36 = getelementptr inbounds %struct.fib, %struct.fib* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 132
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 132, i32* %6, align 4
  br label %49

41:                                               ; preds = %34
  %42 = load %struct.fib*, %struct.fib** %4, align 8
  %43 = getelementptr inbounds %struct.fib, %struct.fib* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 133
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 133, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51, %19
  br label %53

53:                                               ; preds = %52, %12
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %59 [
    i32 130, label %55
    i32 131, label %55
    i32 128, label %55
    i32 129, label %55
    i32 133, label %55
    i32 132, label %58
  ]

55:                                               ; preds = %53, %53, %53, %53, %53
  %56 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %57 = call i32 @aac_scan_host(%struct.aac_dev* %56)
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %53, %58, %55
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp sle i32 %61, 10
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 4
  %66 = call i32 @src_readl(%struct.aac_dev* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 8388608
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %71, i32 10)
  %73 = call i32 @ssleep(i32 1)
  br label %74

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %60

78:                                               ; preds = %60
  ret void
}

declare dso_local i32 @aac_scan_host(%struct.aac_dev*) #1

declare dso_local i32 @src_readl(%struct.aac_dev*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
