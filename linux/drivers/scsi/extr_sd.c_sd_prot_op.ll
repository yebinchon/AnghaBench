; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_prot_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_prot_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sd_prot_op.ops = internal constant [8 x i32] [i32 134, i32 131, i32 133, i32 132, i32 134, i32 130, i32 128, i32 129], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sd_prot_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_prot_op(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 %7, 2
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 %9, 1
  %11 = or i32 %8, %10
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* @sd_prot_op.ops, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
