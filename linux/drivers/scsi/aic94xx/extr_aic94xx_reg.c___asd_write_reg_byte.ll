; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.c___asd_write_reg_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.c___asd_write_reg_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_ha_addrspace* }
%struct.asd_ha_addrspace = type { i32, i32, i32 }

@ALL_BASE_ADDR = common dso_local global i32 0, align 4
@MBAR0_SWA_SIZE = common dso_local global i32 0, align 4
@MBAR0_SWB_SIZE = common dso_local global i32 0, align 4
@MBAR0_SWC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, i32, i32)* @__asd_write_reg_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__asd_write_reg_byte(%struct.asd_ha_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_ha_addrspace*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 0
  %10 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %9, align 8
  %11 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %10, i64 0
  store %struct.asd_ha_addrspace* %11, %struct.asd_ha_addrspace** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp uge i32 %12, -1073741824
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ALL_BASE_ADDR, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %7, align 8
  %23 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %7, align 8
  %30 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MBAR0_SWA_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @asd_write_swa_byte(%struct.asd_ha_struct* %36, i32 %37, i32 %38)
  br label %88

40:                                               ; preds = %27, %18
  %41 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %7, align 8
  %42 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %7, align 8
  %49 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MBAR0_SWB_SIZE, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @asd_write_swb_byte(%struct.asd_ha_struct* %55, i32 %56, i32 %57)
  br label %87

59:                                               ; preds = %46, %40
  %60 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %7, align 8
  %61 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %7, align 8
  %68 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MBAR0_SWC_SIZE, align 4
  %71 = add nsw i32 %69, %70
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @asd_write_swc_byte(%struct.asd_ha_struct* %74, i32 %75, i32 %76)
  br label %86

78:                                               ; preds = %65, %59
  %79 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @asd_move_swb(%struct.asd_ha_struct* %79, i32 %80)
  %82 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @asd_write_swb_byte(%struct.asd_ha_struct* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  br label %87

87:                                               ; preds = %86, %54
  br label %88

88:                                               ; preds = %87, %35
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @asd_write_swa_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_write_swb_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_write_swc_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_move_swb(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
