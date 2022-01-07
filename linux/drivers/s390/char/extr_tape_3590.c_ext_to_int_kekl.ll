; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_ext_to_int_kekl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_ext_to_int_kekl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape390_kekl = type { i64, i64, i32 }
%struct.tape3592_kekl = type { i32, %struct.tape3592_kekl* }

@TAPE390_KEKL_TYPE_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape390_kekl*, %struct.tape3592_kekl*)* @ext_to_int_kekl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_to_int_kekl(%struct.tape390_kekl* %0, %struct.tape3592_kekl* %1) #0 {
  %3 = alloca %struct.tape390_kekl*, align 8
  %4 = alloca %struct.tape3592_kekl*, align 8
  %5 = alloca i32, align 4
  store %struct.tape390_kekl* %0, %struct.tape390_kekl** %3, align 8
  store %struct.tape3592_kekl* %1, %struct.tape3592_kekl** %4, align 8
  %6 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %4, align 8
  %7 = call i32 @memset(%struct.tape3592_kekl* %6, i8 signext 0, i32 16)
  %8 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %9 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TAPE390_KEKL_TYPE_HASH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %4, align 8
  %15 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, 64
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %20 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TAPE390_KEKL_TYPE_HASH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %4, align 8
  %26 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, 128
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %31 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strlen(i32 %32)
  %34 = call i32 @min(i32 8, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %4, align 8
  %36 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %35, i32 0, i32 1
  %37 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %36, align 8
  %38 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %39 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @memcpy(%struct.tape3592_kekl* %37, i32 %40, i32 %41)
  %43 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %4, align 8
  %44 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %43, i32 0, i32 1
  %45 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %45, i64 %47
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 8, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(%struct.tape3592_kekl* %48, i8 signext 32, i32 %52)
  %54 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %4, align 8
  %55 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %54, i32 0, i32 1
  %56 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %55, align 8
  %57 = call i32 @ASCEBC(%struct.tape3592_kekl* %56, i32 8)
  ret void
}

declare dso_local i32 @memset(%struct.tape3592_kekl*, i8 signext, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(%struct.tape3592_kekl*, i32, i32) #1

declare dso_local i32 @ASCEBC(%struct.tape3592_kekl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
