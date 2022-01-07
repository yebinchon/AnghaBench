; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_efifb.c_efifb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_efifb.c_efifb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@screen_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"base:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"stride:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"height:\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"width:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"nowc\00", align 1
@EFI_MEMORY_WC = common dso_local global i32 0, align 4
@mem_flags = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"nobgrt\00", align 1
@use_bgrt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @efifb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efifb_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %76

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %76

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %74, %19, %11
  %13 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %12

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @efifb_setup_from_dmi(%struct.TYPE_3__* @screen_info, i8* %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = call i32 @simple_strtoul(i8* %28, i32* null, i32 0)
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @screen_info, i32 0, i32 0), align 4
  br label %74

30:                                               ; preds = %20
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 7
  %37 = call i32 @simple_strtoul(i8* %36, i32* null, i32 0)
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @screen_info, i32 0, i32 1), align 4
  br label %73

39:                                               ; preds = %30
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  %46 = call i32 @simple_strtoul(i8* %45, i32* null, i32 0)
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @screen_info, i32 0, i32 2), align 4
  br label %72

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = call i32 @simple_strtoul(i8* %53, i32* null, i32 0)
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @screen_info, i32 0, i32 3), align 4
  br label %71

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @EFI_MEMORY_WC, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* @mem_flags, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* @mem_flags, align 4
  br label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 0, i32* @use_bgrt, align 4
  br label %69

69:                                               ; preds = %68, %64
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70, %51
  br label %72

72:                                               ; preds = %71, %43
  br label %73

73:                                               ; preds = %72, %34
  br label %74

74:                                               ; preds = %73, %26
  br label %12

75:                                               ; preds = %12
  br label %76

76:                                               ; preds = %75, %6, %1
  ret i32 0
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @efifb_setup_from_dmi(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
