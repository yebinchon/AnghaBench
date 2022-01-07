; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_sid_to_key_str.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_sid_to_key_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32, i32*, i64*, i32 }

@SID_STRING_BASE_SIZE = common dso_local global i64 0, align 8
@SID_STRING_SUBAUTH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%cs:S-%hhu\00", align 1
@SIDOWNER = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"-%llu\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-0x%llx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cifs_sid*, i32)* @sid_to_key_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sid_to_key_str(%struct.cifs_sid* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cifs_sid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.cifs_sid* %0, %struct.cifs_sid** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* @SID_STRING_BASE_SIZE, align 8
  %13 = add nsw i64 3, %12
  %14 = load i32, i32* @SID_STRING_SUBAUTH_SIZE, align 4
  %15 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %16 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %13, %19
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %3, align 8
  br label %133

27:                                               ; preds = %2
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SIDOWNER, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 111, i32 103
  %35 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 5
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %49 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %52, 8
  %54 = load i64, i64* %11, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %57 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %60, 16
  %62 = load i64, i64* %11, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %11, align 8
  %64 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %65 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 %68, 24
  %70 = load i64, i64* %11, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %73 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = shl i64 %76, 32
  %78 = load i64, i64* %11, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %81 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 48
  %86 = load i64, i64* %11, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @UINT_MAX, align 8
  %90 = icmp ule i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %27
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %7, align 4
  br label %101

96:                                               ; preds = %27
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %7, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %10, align 8
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %128, %101
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %109 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %114 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %10, align 8
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %106

131:                                              ; preds = %106
  %132 = load i8*, i8** %9, align 8
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %131, %25
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
