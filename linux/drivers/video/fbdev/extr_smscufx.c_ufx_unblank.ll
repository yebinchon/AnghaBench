; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_unblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_unblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ufx_unblank error reading 0x2004\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ufx_unblank error reading 0x2000\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ufx_unblank error writing 0x2000\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, i32)* @ufx_unblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_unblank(%struct.ufx_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %11 = call i32 @ufx_reg_read(%struct.ufx_data* %10, i32 8196, i32* %7)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @check_warn_return(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %15 = call i32 @ufx_reg_read(%struct.ufx_data* %14, i32 8192, i32* %6)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @check_warn_return(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %57

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -257
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ufx_reg_write(%struct.ufx_data* %29, i32 8192, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @check_warn_return(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 250
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.ufx_data*, %struct.ufx_data** %4, align 8
  %43 = call i32 @ufx_reg_read(%struct.ufx_data* %42, i32 8196, i32* %7)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @check_warn_return(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %57

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %49, %36, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ufx_reg_read(%struct.ufx_data*, i32, i32*) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
