; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Read_Word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Read_Word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i16*, i8*)* @T93C46_Read_Word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @T93C46_Read_Word(%struct.sym_device* %0, i16* %1, i8* %2) #0 {
  %4 = alloca %struct.sym_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i16*, i16** %5, align 8
  store i16 0, i16* %9, align 2
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %40, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @T93C46_Read_Bit(%struct.sym_device* %14, i32* %8, i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 15, %21
  %23 = shl i32 1, %22
  %24 = load i16*, i16** %5, align 8
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %26, %23
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %24, align 2
  br label %39

29:                                               ; preds = %13
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 15, %30
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i16*, i16** %5, align 8
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, %33
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %34, align 2
  br label %39

39:                                               ; preds = %29, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %10

43:                                               ; preds = %10
  ret void
}

declare dso_local i32 @T93C46_Read_Bit(%struct.sym_device*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
