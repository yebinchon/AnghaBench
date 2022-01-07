; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32 }

@PM2XXX_INT1_ITVBATLOWR = common dso_local global i32 0, align 4
@PM2XXX_INT1_ITVBATLOWF = common dso_local global i32 0, align 4
@PM2XXX_INT1_ITVBATDISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pm2_int_reg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2_int_reg0(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm2xxx_charger*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pm2xxx_charger*
  store %struct.pm2xxx_charger* %8, %struct.pm2xxx_charger** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PM2XXX_INT1_ITVBATLOWR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %15 = load i32, i32* @PM2XXX_INT1_ITVBATLOWR, align 4
  %16 = call i32 @pm2xxx_charger_vbat_lsig_mngt(%struct.pm2xxx_charger* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %48

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PM2XXX_INT1_ITVBATLOWF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %28 = load i32, i32* @PM2XXX_INT1_ITVBATLOWF, align 4
  %29 = call i32 @pm2xxx_charger_vbat_lsig_mngt(%struct.pm2xxx_charger* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %48

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PM2XXX_INT1_ITVBATDISCONNECT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %41 = load i32, i32* @PM2XXX_INT1_ITVBATDISCONNECT, align 4
  %42 = call i32 @pm2xxx_charger_bat_disc_mngt(%struct.pm2xxx_charger* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47, %45, %32, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @pm2xxx_charger_vbat_lsig_mngt(%struct.pm2xxx_charger*, i32) #1

declare dso_local i32 @pm2xxx_charger_bat_disc_mngt(%struct.pm2xxx_charger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
