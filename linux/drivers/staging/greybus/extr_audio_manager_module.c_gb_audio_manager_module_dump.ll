; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager_module.c_gb_audio_manager_module_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_manager_module.c_gb_audio_manager_module_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_audio_manager_module = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [85 x i8] c"audio module #%d name=%s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_audio_manager_module_dump(%struct.gb_audio_manager_module* %0) #0 {
  %2 = alloca %struct.gb_audio_manager_module*, align 8
  store %struct.gb_audio_manager_module* %0, %struct.gb_audio_manager_module** %2, align 8
  %3 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %4 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %7 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %11 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %15 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %19 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %23 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gb_audio_manager_module*, %struct.gb_audio_manager_module** %2, align 8
  %27 = getelementptr inbounds %struct.gb_audio_manager_module, %struct.gb_audio_manager_module* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %9, i32 %13, i32 %17, i32 %21, i32 %25, i32 %29)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
