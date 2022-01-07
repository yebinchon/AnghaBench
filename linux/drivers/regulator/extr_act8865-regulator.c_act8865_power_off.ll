; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.act8865 = type { i32, i32, i32 }

@act8865_i2c_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @act8865_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @act8865_power_off() #0 {
  %1 = alloca %struct.act8865*, align 8
  %2 = load i32, i32* @act8865_i2c_client, align 4
  %3 = call %struct.act8865* @i2c_get_clientdata(i32 %2)
  store %struct.act8865* %3, %struct.act8865** %1, align 8
  %4 = load %struct.act8865*, %struct.act8865** %1, align 8
  %5 = getelementptr inbounds %struct.act8865, %struct.act8865* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.act8865*, %struct.act8865** %1, align 8
  %8 = getelementptr inbounds %struct.act8865, %struct.act8865* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.act8865*, %struct.act8865** %1, align 8
  %11 = getelementptr inbounds %struct.act8865, %struct.act8865* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_write(i32 %6, i32 %9, i32 %12)
  br label %14

14:                                               ; preds = %0, %14
  br label %14
}

declare dso_local %struct.act8865* @i2c_get_clientdata(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
