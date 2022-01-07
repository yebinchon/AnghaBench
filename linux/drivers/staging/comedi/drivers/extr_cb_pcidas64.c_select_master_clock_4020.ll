; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_select_master_clock_4020.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_select_master_clock_4020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_cmd = type { i64 }

@MASTER_CLOCK_4020_MASK = common dso_local global i32 0, align 4
@TRIG_OTHER = common dso_local global i64 0, align 8
@BNC_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@EXT_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@INTERNAL_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@HW_CONFIG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @select_master_clock_4020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_master_clock_4020(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.pcidas64_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  store %struct.pcidas64_private* %9, %struct.pcidas64_private** %5, align 8
  %10 = load i32, i32* @MASTER_CLOCK_4020_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %13 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TRIG_OTHER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %23 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @CR_CHAN(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @BNC_CLOCK_4020_BITS, align 4
  %31 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %32 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @EXT_CLOCK_4020_BITS, align 4
  %37 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %38 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %29
  br label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @INTERNAL_CLOCK_4020_BITS, align 4
  %44 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %45 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %41
  %49 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %50 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %53 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HW_CONFIG_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %51, i64 %56)
  ret void
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
