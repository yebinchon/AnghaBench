; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_message_store_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_message_store_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_group_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dDrR\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.msg_group_t*)* @message_store_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @message_store_helper(i8* %0, i64 %1, %struct.msg_group_t* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.msg_group_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.msg_group_t* %2, %struct.msg_group_t** %6, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load %struct.msg_group_t*, %struct.msg_group_t** %6, align 8
  %28 = getelementptr inbounds %struct.msg_group_t, %struct.msg_group_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load %struct.msg_group_t*, %struct.msg_group_t** %6, align 8
  %31 = getelementptr inbounds %struct.msg_group_t, %struct.msg_group_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %20, align 4
  br label %33

33:                                               ; preds = %152, %132, %85, %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %157

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi i1 [ false, %38 ], [ %53, %52 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %38

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %157

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %66)
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %18, align 4
  br label %157

70:                                               ; preds = %64
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 10)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %157

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @isdigit(i8 signext %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %7, align 8
  br label %33

90:                                               ; preds = %80
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @simple_strtoul(i8* %91, i8** %10, i32 10)
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %111, %90
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = icmp ult i8* %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 32
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 9
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ true, %97 ], [ %106, %102 ]
  br label %109

109:                                              ; preds = %107, %93
  %110 = phi i1 [ false, %93 ], [ %108, %107 ]
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %10, align 8
  br label %93

114:                                              ; preds = %109
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  store i64 %119, i64* %13, align 8
  %120 = load i32, i32* %19, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %19, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %114
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %20, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128, %114
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %136, i8** %7, align 8
  br label %33

137:                                              ; preds = %128
  %138 = load i32, i32* %21, align 4
  %139 = load i8*, i8** %10, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i64 @spk_msg_set(i32 %138, i8* %139, i64 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ult i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i64, i64* %11, align 8
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @ENOMEM, align 8
  %148 = sub i64 0, %147
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 1, i32* %18, align 4
  br label %151

151:                                              ; preds = %150, %144
  br label %157

152:                                              ; preds = %137
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  store i8* %156, i8** %7, align 8
  br label %33

157:                                              ; preds = %151, %77, %69, %63, %33
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.msg_group_t*, %struct.msg_group_t** %6, align 8
  %162 = call i32 @spk_reset_msg_group(%struct.msg_group_t* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.msg_group_t*, %struct.msg_group_t** %6, align 8
  %169 = getelementptr inbounds %struct.msg_group_t, %struct.msg_group_t* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @report_msg_status(i32 %164, i32 %165, i32 %166, i32 %167, i32 %170)
  %172 = load i64, i64* %12, align 8
  ret i64 %172
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @spk_msg_set(i32, i8*, i64) #1

declare dso_local i32 @spk_reset_msg_group(%struct.msg_group_t*) #1

declare dso_local i32 @report_msg_status(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
