; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_dump_regs(%struct.ufs_hba* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = urem i64 %12, 4
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = urem i64 %16, 4
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i64 %23, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @ufshcd_readl(%struct.ufs_hba* %37, i64 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = udiv i64 %43, 4
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %11, align 8
  br label %32

49:                                               ; preds = %32
  %50 = load i8*, i8** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @ufshcd_hex_dump(i8* %50, i32* %51, i64 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @kfree(i32* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %28, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i64) #1

declare dso_local i32 @ufshcd_hex_dump(i8*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
