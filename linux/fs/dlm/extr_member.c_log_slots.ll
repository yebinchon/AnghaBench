; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_log_slots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_log_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.rcom_slot = type { i32, i32 }
%struct.dlm_slot = type { i32, i32 }

@SLOT_DEBUG_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"generation %u slots %d%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, i32, i32, %struct.rcom_slot*, %struct.dlm_slot*, i32)* @log_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_slots(%struct.dlm_ls* %0, i32 %1, i32 %2, %struct.rcom_slot* %3, %struct.dlm_slot* %4, i32 %5) #0 {
  %7 = alloca %struct.dlm_ls*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rcom_slot*, align 8
  %11 = alloca %struct.dlm_slot*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.rcom_slot* %3, %struct.rcom_slot** %10, align 8
  store %struct.dlm_slot* %4, %struct.dlm_slot** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* @SLOT_DEBUG_LINE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @SLOT_DEBUG_LINE, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = trunc i64 %20 to i32
  %26 = call i32 @memset(i8* %22, i32 0, i32 %25)
  %27 = load %struct.dlm_slot*, %struct.dlm_slot** %11, align 8
  %28 = icmp ne %struct.dlm_slot* %27, null
  br i1 %28, label %29, label %77

29:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %73, %29
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = load %struct.dlm_slot*, %struct.dlm_slot** %11, align 8
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %35, i64 %37
  %39 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %73

43:                                               ; preds = %34
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %22, i64 %45
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.dlm_slot*, %struct.dlm_slot** %11, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %50, i64 %52
  %54 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dlm_slot*, %struct.dlm_slot** %11, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %56, i64 %58
  %60 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %64, %65
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %43
  br label %76

69:                                               ; preds = %43
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %69, %42
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %30

76:                                               ; preds = %68, %30
  br label %120

77:                                               ; preds = %6
  %78 = load %struct.rcom_slot*, %struct.rcom_slot** %10, align 8
  %79 = icmp ne %struct.rcom_slot* %78, null
  br i1 %79, label %80, label %119

80:                                               ; preds = %77
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %115, %80
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %118

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %22, i64 %87
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.rcom_slot*, %struct.rcom_slot** %10, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %92, i64 %94
  %96 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rcom_slot*, %struct.rcom_slot** %10, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %98, i64 %100
  %102 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snprintf(i8* %88, i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %106, %107
  %109 = icmp sge i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %85
  br label %118

111:                                              ; preds = %85
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %81

118:                                              ; preds = %110, %81
  br label %119

119:                                              ; preds = %118, %77
  br label %120

120:                                              ; preds = %119, %76
  %121 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @log_rinfo(%struct.dlm_ls* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123, i8* %22)
  %125 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @log_rinfo(%struct.dlm_ls*, i8*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
