; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4173_cardu.c_vrc4173_cardu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4173_cardu.c_vrc4173_cardu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"cardu1:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"noprobe\00", align 1
@cardu_sockets = common dso_local global %struct.TYPE_2__* null, align 8
@CARDU1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"cardu2:\00", align 1
@CARDU2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vrc4173_cardu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrc4173_cardu_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %65

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 7
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cardu_sockets, align 8
  %29 = load i64, i64* @CARDU1, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 7
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 44
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %65

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %65

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @strncmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cardu_sockets, align 8
  %60 = load i64, i64* @CARDU2, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %54, %47
  br label %64

64:                                               ; preds = %63, %43
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %41, %39, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
