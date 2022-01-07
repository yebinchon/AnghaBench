; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_i2c_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_i2c_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"0x1100 read failed\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"I2C read failed, 0x1100=0x%08x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"I2C access timed out, resetting I2C hardware\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"0x1100 write failed\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*)* @ufx_i2c_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_i2c_wait_busy(%struct.ufx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 15
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %12 = call i32 @ufx_reg_read(%struct.ufx_data* %11, i32 4352, i32* %4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @check_warn_return(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -2147483648
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 536870912
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %45

28:                                               ; preds = %10
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @msleep(i32 10)
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7

37:                                               ; preds = %7
  %38 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %40 = call i32 @ufx_reg_write(%struct.ufx_data* %39, i32 4352, i32 1073741824)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @check_warn_return(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %27, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ufx_reg_read(%struct.ufx_data*, i32, i32*) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
