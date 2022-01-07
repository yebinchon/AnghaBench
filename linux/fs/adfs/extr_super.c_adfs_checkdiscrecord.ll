; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_checkdiscrecord.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_checkdiscrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_discrecord = type { i32, i32, i64*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_discrecord*)* @adfs_checkdiscrecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_checkdiscrecord(%struct.adfs_discrecord* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adfs_discrecord*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adfs_discrecord* %0, %struct.adfs_discrecord** %3, align 8
  %6 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %7 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %12 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 9
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %17 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %75

21:                                               ; preds = %15, %10, %1
  %22 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %23 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %26 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 3
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %75

31:                                               ; preds = %21
  %32 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %33 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %37 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %75

42:                                               ; preds = %31
  %43 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %44 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 19, i32 16
  store i32 %48, i32* %4, align 4
  %49 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %50 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %75

55:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %3, align 8
  %62 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %75

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %56

74:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %69, %54, %41, %30, %20
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
