; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_smp2p_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_smp2p_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp2p_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @smp2p_update_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp2p_update_bits(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smp2p_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.smp2p_entry*
  store %struct.smp2p_entry* %11, %struct.smp2p_entry** %7, align 8
  %12 = load %struct.smp2p_entry*, %struct.smp2p_entry** %7, align 8
  %13 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.smp2p_entry*, %struct.smp2p_entry** %7, align 8
  %16 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.smp2p_entry*, %struct.smp2p_entry** %7, align 8
  %28 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @writel(i32 %26, i32 %29)
  %31 = load %struct.smp2p_entry*, %struct.smp2p_entry** %7, align 8
  %32 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.smp2p_entry*, %struct.smp2p_entry** %7, align 8
  %39 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qcom_smp2p_kick(i32 %40)
  br label %42

42:                                               ; preds = %37, %3
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qcom_smp2p_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
