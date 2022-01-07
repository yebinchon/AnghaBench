; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_parse_wwn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_parse_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCM_QLA2XXX_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"err %u len %zu pos %u byte %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @tcm_qla2xxx_parse_wwn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_parse_wwn(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %106, %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @TCM_QLA2XXX_NAMELEN, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = icmp ult i8* %17, %22
  br i1 %23, label %24, label %109

24:                                               ; preds = %16
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %9, align 1
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %106

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  %43 = icmp eq i32 %41, 2
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = icmp slt i32 %45, 7
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 58
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %106

53:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  br label %110

54:                                               ; preds = %44, %40, %37
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  store i32 2, i32* %13, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 8
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %110

65:                                               ; preds = %61, %58
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %121

72:                                               ; preds = %54
  store i32 3, i32* %13, align 4
  %73 = load i8, i8* %9, align 1
  %74 = call i64 @isdigit(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8, i8* %9, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 48
  store i32 %79, i32* %10, align 4
  br label %99

80:                                               ; preds = %72
  %81 = load i8, i8* %9, align 1
  %82 = call i64 @isxdigit(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i8, i8* %9, align 1
  %86 = call i64 @islower(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88, %84
  %92 = load i8, i8* %9, align 1
  %93 = call signext i8 @tolower(i8 signext %92)
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 97
  %96 = add nsw i32 %95, 10
  store i32 %96, i32* %10, align 4
  br label %98

97:                                               ; preds = %88, %80
  br label %110

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %99, %52, %36
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %8, align 8
  br label %16

109:                                              ; preds = %16
  store i32 4, i32* %13, align 4
  br label %110

110:                                              ; preds = %109, %97, %64, %53
  %111 = load i32, i32* %13, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %117, i32 %118, i32 %119)
  store i32 -1, i32* %4, align 4
  br label %121

121:                                              ; preds = %110, %65
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
