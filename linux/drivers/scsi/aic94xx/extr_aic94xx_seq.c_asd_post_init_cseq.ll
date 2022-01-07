; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_post_init_cseq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_post_init_cseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@CARP2INTCTL = common dso_local global i32 0, align 4
@RSTINTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_post_init_cseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_post_init_cseq(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @CMnINT(i32 %9)
  %11 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %8, i32 %10, i32 -1)
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %24, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CMnRSPMBX(i32 %21)
  %23 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %20, i32 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %29 = load i32, i32* @CARP2INTCTL, align 4
  %30 = load i32, i32* @RSTINTCTL, align 4
  %31 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @CMnINT(i32) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @CMnRSPMBX(i32) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
