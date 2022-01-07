; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_core.c_pnp_free_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_core.c_pnp_free_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.pnp_id* }
%struct.pnp_id = type { %struct.pnp_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @pnp_free_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_free_ids(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.pnp_id*, align 8
  %4 = alloca %struct.pnp_id*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 0
  %7 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  store %struct.pnp_id* %7, %struct.pnp_id** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.pnp_id*, %struct.pnp_id** %3, align 8
  %10 = icmp ne %struct.pnp_id* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.pnp_id*, %struct.pnp_id** %3, align 8
  %13 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %12, i32 0, i32 0
  %14 = load %struct.pnp_id*, %struct.pnp_id** %13, align 8
  store %struct.pnp_id* %14, %struct.pnp_id** %4, align 8
  %15 = load %struct.pnp_id*, %struct.pnp_id** %3, align 8
  %16 = call i32 @kfree(%struct.pnp_id* %15)
  %17 = load %struct.pnp_id*, %struct.pnp_id** %4, align 8
  store %struct.pnp_id* %17, %struct.pnp_id** %3, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @kfree(%struct.pnp_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
