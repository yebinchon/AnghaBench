; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_floor_freq_atom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_floor_freq_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rapl_domain = type { i32 }

@set_floor_freq_atom.power_ctrl_orig_val = internal global i32 0, align 4
@rapl_defaults = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Invalid floor frequency config register\0A\00", align 1
@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_CR_READ = common dso_local global i32 0, align 4
@MBI_CR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rapl_domain*, i32)* @set_floor_freq_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_floor_freq_atom(%struct.rapl_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.rapl_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rapl_domain* %0, %struct.rapl_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_defaults, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %39

12:                                               ; preds = %2
  %13 = load i32, i32* @set_floor_freq_atom.power_ctrl_orig_val, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %17 = load i32, i32* @MBI_CR_READ, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_defaults, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iosf_mbi_read(i32 %16, i32 %17, i32 %20, i32* @set_floor_freq_atom.power_ctrl_orig_val)
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* @set_floor_freq_atom.power_ctrl_orig_val, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -32513
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 256
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %33 = load i32, i32* @MBI_CR_WRITE, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_defaults, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @iosf_mbi_write(i32 %32, i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
