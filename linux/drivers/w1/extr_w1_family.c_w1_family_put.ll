; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_family.c_w1_family_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_family.c_w1_family_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_family = type { i32 }

@w1_flock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @w1_family_put(%struct.w1_family* %0) #0 {
  %2 = alloca %struct.w1_family*, align 8
  store %struct.w1_family* %0, %struct.w1_family** %2, align 8
  %3 = call i32 @spin_lock(i32* @w1_flock)
  %4 = load %struct.w1_family*, %struct.w1_family** %2, align 8
  %5 = call i32 @__w1_family_put(%struct.w1_family* %4)
  %6 = call i32 @spin_unlock(i32* @w1_flock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__w1_family_put(%struct.w1_family*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
