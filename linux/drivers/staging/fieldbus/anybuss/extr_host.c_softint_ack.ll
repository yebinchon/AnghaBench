; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_softint_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_softint_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, i32 }

@REG_IND_AP = common dso_local global i32 0, align 4
@IND_AX_EVNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anybuss_host*)* @softint_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softint_ack(%struct.anybuss_host* %0) #0 {
  %2 = alloca %struct.anybuss_host*, align 8
  %3 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %2, align 8
  %4 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %5 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %7 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %13 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REG_IND_AP, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %3)
  %17 = load i32, i32* @IND_AX_EVNT, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %22 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %21, i32 0, i32 2
  %23 = call i32 @atomic_read(i32* %22)
  %24 = load i32, i32* @IND_AX_EVNT, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  %29 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @write_ind_ap(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @write_ind_ap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
