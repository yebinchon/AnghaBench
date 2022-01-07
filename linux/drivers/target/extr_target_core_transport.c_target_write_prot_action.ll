; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_write_prot_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_write_prot_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_T_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_write_prot_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_write_prot_action(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %76 [
    i32 129, label %8
    i32 128, label %20
  ]

8:                                                ; preds = %1
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 129
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = call i32 @sbc_dif_generate(%struct.se_cmd* %17)
  br label %19

19:                                               ; preds = %16, %8
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %77

29:                                               ; preds = %20
  %30 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 7
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ilog2(i32 %38)
  %40 = ashr i32 %32, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sbc_dif_verify(%struct.se_cmd* %41, i32 %44, i32 %45, i32 0, i32 %48, i32 0)
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @unlikely(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %29
  %58 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 3
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load i32, i32* @CMD_T_SENT, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %71 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @transport_generic_request_failure(%struct.se_cmd* %70, i32 %73)
  store i32 -1, i32* %2, align 4
  br label %78

75:                                               ; preds = %29
  br label %77

76:                                               ; preds = %1
  br label %77

77:                                               ; preds = %76, %75, %28, %19
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @sbc_dif_generate(%struct.se_cmd*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @sbc_dif_verify(%struct.se_cmd*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
