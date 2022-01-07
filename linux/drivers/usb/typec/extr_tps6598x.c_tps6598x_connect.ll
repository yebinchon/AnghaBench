; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6598x = type { i32, i32, i32 }
%struct.typec_partner_desc = type { i32, i32*, i32 }

@TPS_REG_POWER_STATUS = common dso_local global i32 0, align 4
@TYPEC_PWR_MODE_PD = common dso_local global i32 0, align 4
@TYPEC_ACCESSORY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6598x*, i32)* @tps6598x_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6598x_connect(%struct.tps6598x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps6598x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.typec_partner_desc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tps6598x* %0, %struct.tps6598x** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %11 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

15:                                               ; preds = %2
  %16 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %17 = load i32, i32* @TPS_REG_POWER_STATUS, align 4
  %18 = call i32 @tps6598x_read16(%struct.tps6598x* %16, i32 %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @TPS_POWER_STATUS_PWROPMODE(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TYPEC_PWR_MODE_PD, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @TYPEC_ACCESSORY_NONE, align 4
  %32 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %6, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %39 = call i32 @tps6598x_read_partner_identity(%struct.tps6598x* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %37
  %45 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %46 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %6, i32 0, i32 1
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %44, %23
  %49 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %50 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @typec_set_pwr_opmode(i32 %51, i32 %52)
  %54 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %55 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @TPS_STATUS_PORTROLE(i32 %57)
  %59 = call i32 @typec_set_pwr_role(i32 %56, i32 %58)
  %60 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %61 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @TPS_STATUS_VCONN(i32 %63)
  %65 = call i32 @typec_set_vconn_role(i32 %62, i32 %64)
  %66 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %67 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @TPS_STATUS_DATAROLE(i32 %69)
  %71 = call i32 @typec_set_data_role(i32 %68, i32 %70)
  %72 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %73 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @typec_register_partner(i32 %74, %struct.typec_partner_desc* %6)
  %76 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %77 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %79 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %48
  %84 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %85 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %3, align 4
  br label %98

88:                                               ; preds = %48
  %89 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %6, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %94 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @typec_partner_set_identity(i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %83, %42, %21, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @tps6598x_read16(%struct.tps6598x*, i32, i32*) #1

declare dso_local i32 @TPS_POWER_STATUS_PWROPMODE(i32) #1

declare dso_local i32 @tps6598x_read_partner_identity(%struct.tps6598x*) #1

declare dso_local i32 @typec_set_pwr_opmode(i32, i32) #1

declare dso_local i32 @typec_set_pwr_role(i32, i32) #1

declare dso_local i32 @TPS_STATUS_PORTROLE(i32) #1

declare dso_local i32 @typec_set_vconn_role(i32, i32) #1

declare dso_local i32 @TPS_STATUS_VCONN(i32) #1

declare dso_local i32 @typec_set_data_role(i32, i32) #1

declare dso_local i32 @TPS_STATUS_DATAROLE(i32) #1

declare dso_local i32 @typec_register_partner(i32, %struct.typec_partner_desc*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @typec_partner_set_identity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
