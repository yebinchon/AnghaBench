; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_set_one_scanlist_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_set_one_scanlist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@AREF_DIFF = common dso_local global i32 0, align 4
@DAQP_SCANLIST_DIFFERENTIAL = common dso_local global i32 0, align 4
@DAQP_SCANLIST_START = common dso_local global i32 0, align 4
@DAQP_SCANLIST_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @daqp_ai_set_one_scanlist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daqp_ai_set_one_scanlist_entry(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CR_CHAN(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @CR_RANGE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CR_AREF(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @DAQP_SCANLIST_CHANNEL(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @DAQP_SCANLIST_GAIN(i32 %19)
  %21 = or i32 %18, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @AREF_DIFF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @DAQP_SCANLIST_DIFFERENTIAL, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @DAQP_SCANLIST_START, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DAQP_SCANLIST_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = load i32, i32* %10, align 4
  %46 = lshr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DAQP_SCANLIST_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @DAQP_SCANLIST_CHANNEL(i32) #1

declare dso_local i32 @DAQP_SCANLIST_GAIN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
