; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_make_bus_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_make_bus_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdomain = type { i64, i64 }

@REG_BCTL = common dso_local global i64 0, align 8
@REG_MCTL = common dso_local global i64 0, align 8
@tmc18c50 = common dso_local global i64 0, align 8
@tmc18c30 = common dso_local global i64 0, align 8
@ACTL_RESET = common dso_local global i32 0, align 4
@ACTL_CLRFIRQ = common dso_local global i32 0, align 4
@PARITY_MASK = common dso_local global i32 0, align 4
@REG_ACTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdomain*)* @fdomain_make_bus_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdomain_make_bus_idle(%struct.fdomain* %0) #0 {
  %2 = alloca %struct.fdomain*, align 8
  store %struct.fdomain* %0, %struct.fdomain** %2, align 8
  %3 = load %struct.fdomain*, %struct.fdomain** %2, align 8
  %4 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REG_BCTL, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outb(i32 0, i64 %7)
  %9 = load %struct.fdomain*, %struct.fdomain** %2, align 8
  %10 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_MCTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i32 0, i64 %13)
  %15 = load %struct.fdomain*, %struct.fdomain** %2, align 8
  %16 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @tmc18c50, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.fdomain*, %struct.fdomain** %2, align 8
  %22 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @tmc18c30, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @ACTL_RESET, align 4
  %28 = load i32, i32* @ACTL_CLRFIRQ, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PARITY_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.fdomain*, %struct.fdomain** %2, align 8
  %33 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_ACTL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 %31, i64 %36)
  br label %48

38:                                               ; preds = %20
  %39 = load i32, i32* @ACTL_RESET, align 4
  %40 = load i32, i32* @PARITY_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.fdomain*, %struct.fdomain** %2, align 8
  %43 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_ACTL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %38, %26
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
