; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_find_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_find_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_fw = type { i32 }
%struct.sym_chip = type { i32 }

@FE_LDSTR = common dso_local global i32 0, align 4
@sym_fw2 = common dso_local global %struct.sym_fw zeroinitializer, align 4
@FE_DAC = common dso_local global i32 0, align 4
@FE_NOPM = common dso_local global i32 0, align 4
@FE_PFEN = common dso_local global i32 0, align 4
@sym_fw1 = common dso_local global %struct.sym_fw zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sym_fw* @sym_find_firmware(%struct.sym_chip* %0) #0 {
  %2 = alloca %struct.sym_fw*, align 8
  %3 = alloca %struct.sym_chip*, align 8
  store %struct.sym_chip* %0, %struct.sym_chip** %3, align 8
  %4 = load %struct.sym_chip*, %struct.sym_chip** %3, align 8
  %5 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FE_LDSTR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.sym_fw* @sym_fw2, %struct.sym_fw** %2, align 8
  br label %12

11:                                               ; preds = %1
  store %struct.sym_fw* null, %struct.sym_fw** %2, align 8
  br label %12

12:                                               ; preds = %11, %10
  %13 = load %struct.sym_fw*, %struct.sym_fw** %2, align 8
  ret %struct.sym_fw* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
