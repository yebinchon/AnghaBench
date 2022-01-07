; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_checkmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_checkmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_discmap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"zone %d fails zonecheck\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"crosscheck != 0xff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.adfs_discmap*)* @adfs_checkmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_checkmap(%struct.super_block* %0, %struct.adfs_discmap* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.adfs_discmap*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.adfs_discmap* %1, %struct.adfs_discmap** %4, align 8
  store i8 0, i8* %5, align 1
  store i8 1, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.TYPE_4__* @ADFS_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %9
  %17 = load %struct.adfs_discmap*, %struct.adfs_discmap** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %17, i64 %19
  %21 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call zeroext i8 @adfs_calczonecheck(%struct.super_block* %25, i8* %26)
  %28 = zext i8 %27 to i32
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %16
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.super_block*, i8*, ...) @adfs_error(%struct.super_block* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i8 0, i8* %6, align 1
  br label %38

38:                                               ; preds = %34, %16
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %5, align 1
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %9

50:                                               ; preds = %9
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 255
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.super_block*, %struct.super_block** %3, align 8
  %56 = call i32 (%struct.super_block*, i8*, ...) @adfs_error(%struct.super_block* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8, i8* %6, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local %struct.TYPE_4__* @ADFS_SB(%struct.super_block*) #1

declare dso_local zeroext i8 @adfs_calczonecheck(%struct.super_block*, i8*) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
