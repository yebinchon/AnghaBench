; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32, %struct.iss_device* }
%struct.iss_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"-------------CSI2 Register dump-------------\0A\00", align 1
@SYSCONFIG = common dso_local global i32 0, align 4
@SYSSTATUS = common dso_local global i32 0, align 4
@IRQENABLE = common dso_local global i32 0, align 4
@IRQSTATUS = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@DBG_H = common dso_local global i32 0, align 4
@COMPLEXIO_CFG = common dso_local global i32 0, align 4
@COMPLEXIO_IRQSTATUS = common dso_local global i32 0, align 4
@SHORT_PACKET = common dso_local global i32 0, align 4
@COMPLEXIO_IRQENABLE = common dso_local global i32 0, align 4
@DBG_P = common dso_local global i32 0, align 4
@TIMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"--------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*)* @csi2_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_print_status(%struct.iss_csi2_device* %0) #0 {
  %2 = alloca %struct.iss_csi2_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %2, align 8
  %4 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %5 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %4, i32 0, i32 2
  %6 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  store %struct.iss_device* %6, %struct.iss_device** %3, align 8
  %7 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %8 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %141

12:                                               ; preds = %1
  %13 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %14 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %18 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %19 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SYSCONFIG, align 4
  %22 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %17, i32 %20, i32 %21)
  %23 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %24 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %25 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYSSTATUS, align 4
  %28 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %23, i32 %26, i32 %27)
  %29 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %30 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %31 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IRQENABLE, align 4
  %34 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %29, i32 %32, i32 %33)
  %35 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %36 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %37 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IRQSTATUS, align 4
  %40 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %35, i32 %38, i32 %39)
  %41 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %42 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %43 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CTRL, align 4
  %46 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %41, i32 %44, i32 %45)
  %47 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %48 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %49 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DBG_H, align 4
  %52 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %47, i32 %50, i32 %51)
  %53 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %54 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %55 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @COMPLEXIO_CFG, align 4
  %58 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %53, i32 %56, i32 %57)
  %59 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %60 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %61 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @COMPLEXIO_IRQSTATUS, align 4
  %64 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %59, i32 %62, i32 %63)
  %65 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %66 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %67 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SHORT_PACKET, align 4
  %70 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %65, i32 %68, i32 %69)
  %71 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %72 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %73 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @COMPLEXIO_IRQENABLE, align 4
  %76 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %71, i32 %74, i32 %75)
  %77 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %78 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %79 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DBG_P, align 4
  %82 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %77, i32 %80, i32 %81)
  %83 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %84 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %85 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TIMING, align 4
  %88 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %83, i32 %86, i32 %87)
  %89 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %90 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %91 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @CTX_CTRL1(i32 0)
  %94 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %89, i32 %92, i32 %93)
  %95 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %96 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %97 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CTX_CTRL2(i32 0)
  %100 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %95, i32 %98, i32 %99)
  %101 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %102 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %103 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @CTX_DAT_OFST(i32 0)
  %106 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %101, i32 %104, i32 %105)
  %107 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %108 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %109 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @CTX_PING_ADDR(i32 0)
  %112 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %107, i32 %110, i32 %111)
  %113 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %114 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %115 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @CTX_PONG_ADDR(i32 0)
  %118 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %113, i32 %116, i32 %117)
  %119 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %120 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %121 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CTX_IRQENABLE(i32 0)
  %124 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %119, i32 %122, i32 %123)
  %125 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %126 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %127 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @CTX_IRQSTATUS(i32 0)
  %130 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %125, i32 %128, i32 %129)
  %131 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %132 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %133 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @CTX_CTRL3(i32 0)
  %136 = call i32 @CSI2_PRINT_REGISTER(%struct.iss_device* %131, i32 %134, i32 %135)
  %137 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %138 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_dbg(i32 %139, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %12, %11
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @CSI2_PRINT_REGISTER(%struct.iss_device*, i32, i32) #1

declare dso_local i32 @CTX_CTRL1(i32) #1

declare dso_local i32 @CTX_CTRL2(i32) #1

declare dso_local i32 @CTX_DAT_OFST(i32) #1

declare dso_local i32 @CTX_PING_ADDR(i32) #1

declare dso_local i32 @CTX_PONG_ADDR(i32) #1

declare dso_local i32 @CTX_IRQENABLE(i32) #1

declare dso_local i32 @CTX_IRQSTATUS(i32) #1

declare dso_local i32 @CTX_CTRL3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
