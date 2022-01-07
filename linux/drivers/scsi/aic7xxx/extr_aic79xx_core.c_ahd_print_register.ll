; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_print_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_print_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s[0x%x]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c":(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c") \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_print_register(%struct.TYPE_3__* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i64*, i64** %14, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i64*, i64** %14, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i64*, i64** %14, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21, %7
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %30, i64 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %40
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %8, align 4
  br label %142

45:                                               ; preds = %29
  store i64 0, i64* %17, align 8
  br label %46

46:                                               ; preds = %119, %45
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 255
  br i1 %48, label %49, label %120

49:                                               ; preds = %46
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %110, %49
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %50
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %56, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %63, %69
  br i1 %70, label %87, label %71

71:                                               ; preds = %55
  %72 = load i64, i64* %17, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %72, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %79, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %71, %55
  br label %110

88:                                               ; preds = %71
  %89 = load i64, i64* %17, align 8
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %92, i32 %98)
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %17, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %17, align 8
  br label %113

110:                                              ; preds = %87
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  br label %50

113:                                              ; preds = %88, %50
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %10, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %120

119:                                              ; preds = %113
  br label %46

120:                                              ; preds = %118, %46
  %121 = load i64, i64* %17, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %16, align 4
  br label %131

127:                                              ; preds = %120
  %128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i64*, i64** %14, align 8
  %133 = icmp ne i64* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64*, i64** %14, align 8
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %136
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %134, %131
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %35
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
