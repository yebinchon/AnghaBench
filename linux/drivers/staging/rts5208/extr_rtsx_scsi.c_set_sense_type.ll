; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_set_sense_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_set_sense_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@CUR_ERR = common dso_local global i32 0, align 4
@ILGAL_REQ = common dso_local global i32 0, align 4
@ASC_INVLD_CDB = common dso_local global i32 0, align 4
@ASCQ_INVLD_CDB = common dso_local global i32 0, align 4
@CDB_ILLEGAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_sense_type(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %63 [
    i32 141, label %8
    i32 137, label %13
    i32 139, label %18
    i32 138, label %23
    i32 133, label %28
    i32 135, label %33
    i32 134, label %38
    i32 140, label %43
    i32 142, label %52
    i32 143, label %57
    i32 128, label %62
  ]

8:                                                ; preds = %3
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CUR_ERR, align 4
  %12 = call i32 @set_sense_data(%struct.rtsx_chip* %9, i32 %10, i32 %11, i32 6, i32 0, i32 40, i32 0, i32 0, i32 0)
  br label %68

13:                                               ; preds = %3
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CUR_ERR, align 4
  %17 = call i32 @set_sense_data(%struct.rtsx_chip* %14, i32 %15, i32 %16, i32 2, i32 0, i32 58, i32 0, i32 0, i32 0)
  br label %68

18:                                               ; preds = %3
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CUR_ERR, align 4
  %22 = call i32 @set_sense_data(%struct.rtsx_chip* %19, i32 %20, i32 %21, i32 5, i32 0, i32 33, i32 0, i32 0, i32 0)
  br label %68

23:                                               ; preds = %3
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CUR_ERR, align 4
  %27 = call i32 @set_sense_data(%struct.rtsx_chip* %24, i32 %25, i32 %26, i32 5, i32 0, i32 37, i32 0, i32 0, i32 0)
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CUR_ERR, align 4
  %32 = call i32 @set_sense_data(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 7, i32 0, i32 39, i32 0, i32 0, i32 0)
  br label %68

33:                                               ; preds = %3
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CUR_ERR, align 4
  %37 = call i32 @set_sense_data(%struct.rtsx_chip* %34, i32 %35, i32 %36, i32 3, i32 0, i32 17, i32 0, i32 0, i32 0)
  br label %68

38:                                               ; preds = %3
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CUR_ERR, align 4
  %42 = call i32 @set_sense_data(%struct.rtsx_chip* %39, i32 %40, i32 %41, i32 3, i32 0, i32 12, i32 2, i32 0, i32 0)
  br label %68

43:                                               ; preds = %3
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CUR_ERR, align 4
  %47 = load i32, i32* @ILGAL_REQ, align 4
  %48 = load i32, i32* @ASC_INVLD_CDB, align 4
  %49 = load i32, i32* @ASCQ_INVLD_CDB, align 4
  %50 = load i32, i32* @CDB_ILLEGAL, align 4
  %51 = call i32 @set_sense_data(%struct.rtsx_chip* %44, i32 %45, i32 %46, i32 %47, i32 0, i32 %48, i32 %49, i32 %50, i32 1)
  br label %68

52:                                               ; preds = %3
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @CUR_ERR, align 4
  %56 = call i32 @set_sense_data(%struct.rtsx_chip* %53, i32 %54, i32 %55, i32 2, i32 0, i32 4, i32 4, i32 0, i32 0)
  br label %68

57:                                               ; preds = %3
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CUR_ERR, align 4
  %61 = call i32 @set_sense_data(%struct.rtsx_chip* %58, i32 %59, i32 %60, i32 3, i32 0, i32 49, i32 1, i32 0, i32 0)
  br label %68

62:                                               ; preds = %3
  br label %63

63:                                               ; preds = %3, %62
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CUR_ERR, align 4
  %67 = call i32 @set_sense_data(%struct.rtsx_chip* %64, i32 %65, i32 %66, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %68

68:                                               ; preds = %63, %57, %52, %43, %38, %33, %28, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @set_sense_data(%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
