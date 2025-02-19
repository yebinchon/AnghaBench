; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_34xx.c_tape_34xx_mttell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_34xx.c_tape_34xx_mttell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.anon = type { %struct.tape_34xx_block_id, %struct.tape_34xx_block_id }
%struct.tape_34xx_block_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, i32)* @tape_34xx_mttell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_mttell(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.anon, align 1
  %7 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %9 = bitcast %struct.anon* %6 to i32*
  %10 = call i32 @tape_std_read_block_id(%struct.tape_device* %8, i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.tape_34xx_block_id, %struct.tape_34xx_block_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 1
  %20 = call i32 @tape_34xx_add_sbid(%struct.tape_device* %16, i32 %19)
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.tape_34xx_block_id, %struct.tape_34xx_block_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @tape_std_read_block_id(%struct.tape_device*, i32*) #1

declare dso_local i32 @tape_34xx_add_sbid(%struct.tape_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
