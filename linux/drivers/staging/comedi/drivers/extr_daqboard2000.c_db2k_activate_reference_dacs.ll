; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_activate_reference_dacs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_activate_reference_dacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DB2K_REF_DACS_SET = common dso_local global i32 0, align 4
@DB2K_REF_DACS_SELECT_POS_REF = common dso_local global i32 0, align 4
@DB2K_REG_REF_DACS = common dso_local global i64 0, align 8
@DB2K_REG_DAC_STATUS = common dso_local global i64 0, align 8
@DB2K_DAC_STATUS_REF_BUSY = common dso_local global i32 0, align 4
@DB2K_REF_DACS_SELECT_NEG_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @db2k_activate_reference_dacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db2k_activate_reference_dacs(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load i32, i32* @DB2K_REF_DACS_SET, align 4
  %6 = load i32, i32* @DB2K_REF_DACS_SELECT_POS_REF, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DB2K_REG_REF_DACS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writew(i32 %7, i64 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 20
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DB2K_REG_DAC_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readw(i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @DB2K_DAC_STATUS_REF_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %34

29:                                               ; preds = %17
  %30 = call i32 @udelay(i32 2)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14

34:                                               ; preds = %28, %14
  %35 = load i32, i32* @DB2K_REF_DACS_SET, align 4
  %36 = load i32, i32* @DB2K_REF_DACS_SELECT_NEG_REF, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DB2K_REG_REF_DACS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %37, i64 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %61, %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 20
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DB2K_REG_DAC_STATUS, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readw(i64 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @DB2K_DAC_STATUS_REF_BUSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %64

59:                                               ; preds = %47
  %60 = call i32 @udelay(i32 2)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %44

64:                                               ; preds = %58, %44
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
