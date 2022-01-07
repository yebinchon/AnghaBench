; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_int_to_ext_kekl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_int_to_ext_kekl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape3592_kekl = type { i32, i32 }
%struct.tape390_kekl = type { i32, i8*, i8* }

@TAPE390_KEKL_TYPE_HASH = common dso_local global i8* null, align 8
@TAPE390_KEKL_TYPE_LABEL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape3592_kekl*, %struct.tape390_kekl*)* @int_to_ext_kekl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_to_ext_kekl(%struct.tape3592_kekl* %0, %struct.tape390_kekl* %1) #0 {
  %3 = alloca %struct.tape3592_kekl*, align 8
  %4 = alloca %struct.tape390_kekl*, align 8
  store %struct.tape3592_kekl* %0, %struct.tape3592_kekl** %3, align 8
  store %struct.tape390_kekl* %1, %struct.tape390_kekl** %4, align 8
  %5 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %6 = call i32 @memset(%struct.tape390_kekl* %5, i32 0, i32 24)
  %7 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %3, align 8
  %8 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** @TAPE390_KEKL_TYPE_HASH, align 8
  %14 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %15 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** @TAPE390_KEKL_TYPE_LABEL, align 8
  %18 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %19 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %3, align 8
  %22 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** @TAPE390_KEKL_TYPE_HASH, align 8
  %28 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %29 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load i8*, i8** @TAPE390_KEKL_TYPE_LABEL, align 8
  %32 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %33 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %36 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tape3592_kekl*, %struct.tape3592_kekl** %3, align 8
  %39 = getelementptr inbounds %struct.tape3592_kekl, %struct.tape3592_kekl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %37, i32 %40, i32 4)
  %42 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %43 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @EBCASC(i32 %44, i32 4)
  %46 = load %struct.tape390_kekl*, %struct.tape390_kekl** %4, align 8
  %47 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strim(i32 %48)
  ret void
}

declare dso_local i32 @memset(%struct.tape390_kekl*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @EBCASC(i32, i32) #1

declare dso_local i32 @strim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
