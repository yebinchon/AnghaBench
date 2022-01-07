; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_bios_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_bios_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @arcmsr_bios_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_bios_param(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.block_device*, %struct.block_device** %7, align 8
  %17 = call i8* @scsi_bios_ptable(%struct.block_device* %16)
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %15, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load i8*, i8** %15, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32 @scsi_partsize(i8* %21, i32 %22, i32* %24, i32* %26, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %62

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %14, align 4
  store i32 64, i32* %11, align 4
  store i32 32, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %39, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 1024
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  store i32 255, i32* %11, align 4
  store i32 63, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %47, %50
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %46, %37
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %34
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i8* @scsi_bios_ptable(%struct.block_device*) #1

declare dso_local i32 @scsi_partsize(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
