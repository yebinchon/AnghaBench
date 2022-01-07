; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_byte_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_byte_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i8*, i32)* @imm_byte_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_byte_in(i16 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i16, i16* %4, align 2
  %9 = call i32 @w_ctr(i16 zeroext %8, i32 4)
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i16, i16* %4, align 2
  %16 = call i32 @w_ctr(i16 zeroext %15, i32 38)
  %17 = load i16, i16* %4, align 2
  %18 = call i32 @r_dtr(i16 zeroext %17)
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  store i8 %19, i8* %20, align 1
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @w_ctr(i16 zeroext %22, i32 37)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  br label %11

27:                                               ; preds = %11
  ret i32 1
}

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @r_dtr(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
