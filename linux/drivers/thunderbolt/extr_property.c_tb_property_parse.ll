; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32, %struct.tb_property_dir* }
%struct.tb_property_dir = type { i32 }
%struct.tb_property_entry = type { i32, i32, i32 }

@TB_PROPERTY_KEY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TB_PROPERTY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_property* (%struct.tb_property_entry*, i64, %struct.tb_property_entry*)* @tb_property_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_property* @tb_property_parse(%struct.tb_property_entry* %0, i64 %1, %struct.tb_property_entry* %2) #0 {
  %4 = alloca %struct.tb_property*, align 8
  %5 = alloca %struct.tb_property_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tb_property_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tb_property*, align 8
  %11 = alloca %struct.tb_property_dir*, align 8
  %12 = alloca i32, align 4
  store %struct.tb_property_entry* %0, %struct.tb_property_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tb_property_entry* %2, %struct.tb_property_entry** %7, align 8
  %13 = load i32, i32* @TB_PROPERTY_KEY_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @tb_property_entry_valid(%struct.tb_property_entry* %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.tb_property* null, %struct.tb_property** %4, align 8
  store i32 1, i32* %12, align 4
  br label %153

23:                                               ; preds = %3
  %24 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %25 = call i32 @parse_dwdata(i8* %17, %struct.tb_property_entry* %24, i32 2)
  %26 = load i32, i32* @TB_PROPERTY_KEY_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %17, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %30 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.tb_property* @tb_property_alloc(i8* %17, i32 %31)
  store %struct.tb_property* %32, %struct.tb_property** %10, align 8
  %33 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %34 = icmp ne %struct.tb_property* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store %struct.tb_property* null, %struct.tb_property** %4, align 8
  store i32 1, i32* %12, align 4
  br label %153

36:                                               ; preds = %23
  %37 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %38 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %41 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %43 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %147 [
    i32 130, label %45
    i32 131, label %65
    i32 129, label %97
    i32 128, label %140
  ]

45:                                               ; preds = %36
  %46 = load %struct.tb_property_entry*, %struct.tb_property_entry** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %49 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %52 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.tb_property_dir* @__tb_property_parse_dir(%struct.tb_property_entry* %46, i64 %47, i32 %50, i32 %53, i32 0)
  store %struct.tb_property_dir* %54, %struct.tb_property_dir** %11, align 8
  %55 = load %struct.tb_property_dir*, %struct.tb_property_dir** %11, align 8
  %56 = icmp ne %struct.tb_property_dir* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %59 = call i32 @kfree(%struct.tb_property* %58)
  store %struct.tb_property* null, %struct.tb_property** %4, align 8
  store i32 1, i32* %12, align 4
  br label %153

60:                                               ; preds = %45
  %61 = load %struct.tb_property_dir*, %struct.tb_property_dir** %11, align 8
  %62 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %63 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store %struct.tb_property_dir* %61, %struct.tb_property_dir** %64, align 8
  br label %151

65:                                               ; preds = %36
  %66 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %67 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kcalloc(i32 %68, i32 12, i32 %69)
  %71 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %72 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %75 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %81 = call i32 @kfree(%struct.tb_property* %80)
  store %struct.tb_property* null, %struct.tb_property** %4, align 8
  store i32 1, i32* %12, align 4
  br label %153

82:                                               ; preds = %65
  %83 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %84 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.tb_property_entry*, %struct.tb_property_entry** %5, align 8
  %88 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %89 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %87, i64 %91
  %93 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %94 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @parse_dwdata(i8* %86, %struct.tb_property_entry* %92, i32 %95)
  br label %151

97:                                               ; preds = %36
  %98 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %99 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @kcalloc(i32 %100, i32 12, i32 %101)
  %103 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %104 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %107 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %97
  %112 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %113 = call i32 @kfree(%struct.tb_property* %112)
  store %struct.tb_property* null, %struct.tb_property** %4, align 8
  store i32 1, i32* %12, align 4
  br label %153

114:                                              ; preds = %97
  %115 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %116 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.tb_property_entry*, %struct.tb_property_entry** %5, align 8
  %120 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %121 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %119, i64 %123
  %125 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %126 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @parse_dwdata(i8* %118, %struct.tb_property_entry* %124, i32 %127)
  %129 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %130 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %134 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %132, i64 %138
  store i8 0, i8* %139, align 1
  br label %151

140:                                              ; preds = %36
  %141 = load %struct.tb_property_entry*, %struct.tb_property_entry** %7, align 8
  %142 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %145 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  br label %151

147:                                              ; preds = %36
  %148 = load i32, i32* @TB_PROPERTY_TYPE_UNKNOWN, align 4
  %149 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  %150 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %140, %114, %82, %60
  %152 = load %struct.tb_property*, %struct.tb_property** %10, align 8
  store %struct.tb_property* %152, %struct.tb_property** %4, align 8
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %151, %111, %79, %57, %35, %22
  %154 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load %struct.tb_property*, %struct.tb_property** %4, align 8
  ret %struct.tb_property* %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tb_property_entry_valid(%struct.tb_property_entry*, i64) #2

declare dso_local i32 @parse_dwdata(i8*, %struct.tb_property_entry*, i32) #2

declare dso_local %struct.tb_property* @tb_property_alloc(i8*, i32) #2

declare dso_local %struct.tb_property_dir* @__tb_property_parse_dir(%struct.tb_property_entry*, i64, i32, i32, i32) #2

declare dso_local i32 @kfree(%struct.tb_property*) #2

declare dso_local i8* @kcalloc(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
