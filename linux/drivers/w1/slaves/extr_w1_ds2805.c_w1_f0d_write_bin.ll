; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2805.c_w1_f0d_write_bin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2805.c_w1_f0d_write_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@W1_F0D_EEPROM_SIZE = common dso_local global i32 0, align 4
@W1_F0D_SCRATCH_SIZE = common dso_local global i32 0, align 4
@W1_F0D_SCRATCH_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @w1_f0d_write_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @w1_f0d_write_bin(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load %struct.kobject*, %struct.kobject** %9, align 8
  %22 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %21)
  store %struct.w1_slave* %22, %struct.w1_slave** %14, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i32, i32* @W1_F0D_EEPROM_SIZE, align 4
  %26 = call i64 @w1_f0d_fix_count(i32 %23, i64 %24, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %134

30:                                               ; preds = %6
  %31 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %32 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* %13, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %115, %30
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %126

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @W1_F0D_SCRATCH_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @W1_F0D_SCRATCH_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @W1_F0D_SCRATCH_SIZE, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %18, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %19, align 8
  %56 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @W1_F0D_SCRATCH_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* @W1_F0D_SCRATCH_SIZE, align 4
  %62 = call i64 @w1_f0d_readblock(%struct.w1_slave* %56, i32 %60, i32 %61, i8* %55)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i64, i64* @EIO, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %13, align 8
  store i32 4, i32* %20, align 4
  br label %99

67:                                               ; preds = %51
  %68 = load i32, i32* @W1_F0D_SCRATCH_SIZE, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @W1_F0D_SCRATCH_MASK, align 4
  %71 = and i32 %69, %70
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %76, %67
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @W1_F0D_SCRATCH_MASK, align 4
  %81 = and i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %55, i64 %82
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @memcpy(i8* %83, i8* %84, i32 %85)
  %87 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @W1_F0D_SCRATCH_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* @W1_F0D_SCRATCH_SIZE, align 4
  %93 = call i64 @w1_f0d_write(%struct.w1_slave* %87, i32 %91, i32 %92, i8* %55)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = load i64, i64* @EIO, align 8
  %97 = sub i64 0, %96
  store i64 %97, i64* %13, align 8
  store i32 4, i32* %20, align 4
  br label %99

98:                                               ; preds = %78
  store i32 0, i32* %20, align 4
  br label %99

99:                                               ; preds = %95, %64, %98
  %100 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %20, align 4
  switch i32 %101, label %136 [
    i32 0, label %102
    i32 4, label %127
  ]

102:                                              ; preds = %99
  br label %115

103:                                              ; preds = %46
  %104 = load i32, i32* @W1_F0D_SCRATCH_SIZE, align 4
  store i32 %104, i32* %17, align 4
  %105 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = call i64 @w1_f0d_write(%struct.w1_slave* %105, i32 %106, i32 %107, i8* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i64, i64* @EIO, align 8
  %113 = sub i64 0, %112
  store i64 %113, i64* %13, align 8
  br label %127

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i32, i32* %17, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %11, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %16, align 4
  br label %39

126:                                              ; preds = %39
  br label %127

127:                                              ; preds = %126, %111, %99
  %128 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %129 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i64, i64* %13, align 8
  store i64 %133, i64* %7, align 8
  br label %134

134:                                              ; preds = %127, %29
  %135 = load i64, i64* %7, align 8
  ret i64 %135

136:                                              ; preds = %99
  unreachable
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i64 @w1_f0d_fix_count(i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @w1_f0d_readblock(%struct.w1_slave*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @w1_f0d_write(%struct.w1_slave*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
