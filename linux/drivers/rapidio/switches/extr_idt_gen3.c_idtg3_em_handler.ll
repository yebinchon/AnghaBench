; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen3.c_idtg3_em_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen3.c_idtg3_em_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32 }

@RIO_PORT_N_ERR_STS_PORT_UNINIT = common dso_local global i32 0, align 4
@RIO_PORT_N_ERR_STS_OUT_ES = common dso_local global i32 0, align 4
@RIO_PORT_N_ERR_STS_INP_ES = common dso_local global i32 0, align 4
@RIO_PLM_SPx_IMP_SPEC_CTL_SOFT_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, i32)* @idtg3_em_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg3_em_handler(%struct.rio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %9 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev* %9, i32 %10)
  %12 = call i32 @rio_read_config_32(%struct.rio_dev* %8, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RIO_PORT_N_ERR_STS_PORT_UNINIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RIO_PORT_N_ERR_STS_OUT_ES, align 4
  %21 = load i32, i32* @RIO_PORT_N_ERR_STS_INP_ES, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RIO_PLM_SPx_IMP_SPEC_CTL(i32 %27)
  %29 = call i32 @rio_read_config_32(%struct.rio_dev* %26, i32 %28, i32* %7)
  %30 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @RIO_PLM_SPx_IMP_SPEC_CTL(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RIO_PLM_SPx_IMP_SPEC_CTL_SOFT_RST, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rio_write_config_32(%struct.rio_dev* %30, i32 %32, i32 %35)
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @RIO_PLM_SPx_IMP_SPEC_CTL(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rio_write_config_32(%struct.rio_dev* %38, i32 %40, i32 %41)
  %43 = call i32 @msleep(i32 500)
  br label %44

44:                                               ; preds = %25, %18
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev*, i32) #1

declare dso_local i32 @RIO_PLM_SPx_IMP_SPEC_CTL(i32) #1

declare dso_local i32 @rio_write_config_32(%struct.rio_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
