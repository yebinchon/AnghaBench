; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_debug.c_qdio_allocate_dbf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_debug.c_qdio_allocate_dbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { i64, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.qdio_irq = type { i32 }
%struct.qdio_dbf_entry = type { i32, i32, i32 }

@QDIO_DBF_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qfmt:%1d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qpff%4x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"niq:%1d noq:%1d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"irq:%8lx\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"qdio_%s\00", align 1
@DBF_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"dbf reused\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug_hex_ascii_view = common dso_local global i32 0, align 4
@DBF_WARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"dbf created\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@qdio_dbf_list_mutex = common dso_local global i32 0, align 4
@qdio_dbf_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_allocate_dbf(%struct.qdio_initialize* %0, %struct.qdio_irq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_initialize*, align 8
  %5 = alloca %struct.qdio_irq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qdio_dbf_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %4, align 8
  store %struct.qdio_irq* %1, %struct.qdio_irq** %5, align 8
  %10 = load i32, i32* @QDIO_DBF_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %15 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %19 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %18, i32 0, i32 13
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @DBF_HEX(i32* %20, i32 8)
  %22 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %23 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %27 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %26, i32 0, i32 12
  %28 = call i32 @DBF_HEX(i32* %27, i32 8)
  %29 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %30 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %29, i32 0, i32 11
  %31 = call i32 @DBF_HEX(i32* %30, i32 8)
  %32 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %33 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %32, i32 0, i32 10
  %34 = call i32 @DBF_HEX(i32* %33, i32 8)
  %35 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %36 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %40 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %38, i32 %41)
  %43 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %44 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %43, i32 0, i32 7
  %45 = call i32 @DBF_HEX(i32* %44, i32 8)
  %46 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %47 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %46, i32 0, i32 6
  %48 = call i32 @DBF_HEX(i32* %47, i32 8)
  %49 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %50 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %49, i32 0, i32 5
  %51 = call i32 @DBF_HEX(i32* %50, i32 8)
  %52 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %53 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %52, i32 0, i32 4
  %54 = call i32 @DBF_HEX(i32* %53, i32 8)
  %55 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %56 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %55, i32 0, i32 3
  %57 = call i32 @DBF_HEX(i32* %56, i32 8)
  %58 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %59 = ptrtoint %struct.qdio_irq* %58 to i64
  %60 = call i32 (i8*, i64, ...) @DBF_EVENT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @QDIO_DBF_NAME_LEN, align 4
  %62 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %63 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i8* @dev_name(i32* %65)
  %67 = call i32 @snprintf(i8* %13, i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = call i32 @qdio_get_dbf_entry(i8* %13)
  %69 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %70 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %72 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %2
  %76 = load i32, i32* @DBF_ERR, align 4
  %77 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %78 = call i32 @DBF_DEV_EVENT(i32 %76, %struct.qdio_irq* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %139

79:                                               ; preds = %2
  %80 = call i32 @debug_register(i8* %13, i32 2, i32 1, i32 16)
  %81 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %82 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %84 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %140

90:                                               ; preds = %79
  %91 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %92 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @debug_register_view(i32 %93, i32* @debug_hex_ascii_view)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %98 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @debug_unregister(i32 %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %140

103:                                              ; preds = %90
  %104 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %105 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @DBF_WARN, align 4
  %108 = call i32 @debug_set_level(i32 %106, i32 %107)
  %109 = load i32, i32* @DBF_ERR, align 4
  %110 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %111 = call i32 @DBF_DEV_EVENT(i32 %109, %struct.qdio_irq* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.qdio_dbf_entry* @kzalloc(i32 12, i32 %112)
  store %struct.qdio_dbf_entry* %113, %struct.qdio_dbf_entry** %8, align 8
  %114 = load %struct.qdio_dbf_entry*, %struct.qdio_dbf_entry** %8, align 8
  %115 = icmp ne %struct.qdio_dbf_entry* %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %103
  %117 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %118 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @debug_unregister(i32 %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %140

123:                                              ; preds = %103
  %124 = load %struct.qdio_dbf_entry*, %struct.qdio_dbf_entry** %8, align 8
  %125 = getelementptr inbounds %struct.qdio_dbf_entry, %struct.qdio_dbf_entry* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @QDIO_DBF_NAME_LEN, align 4
  %128 = call i32 @strlcpy(i32 %126, i8* %13, i32 %127)
  %129 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %130 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.qdio_dbf_entry*, %struct.qdio_dbf_entry** %8, align 8
  %133 = getelementptr inbounds %struct.qdio_dbf_entry, %struct.qdio_dbf_entry* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = call i32 @mutex_lock(i32* @qdio_dbf_list_mutex)
  %135 = load %struct.qdio_dbf_entry*, %struct.qdio_dbf_entry** %8, align 8
  %136 = getelementptr inbounds %struct.qdio_dbf_entry, %struct.qdio_dbf_entry* %135, i32 0, i32 0
  %137 = call i32 @list_add(i32* %136, i32* @qdio_dbf_list)
  %138 = call i32 @mutex_unlock(i32* @qdio_dbf_list_mutex)
  br label %139

139:                                              ; preds = %123, %75
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %140

140:                                              ; preds = %139, %116, %96, %87
  %141 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DBF_EVENT(i8*, i64, ...) #2

declare dso_local i32 @DBF_HEX(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i32 @qdio_get_dbf_entry(i8*) #2

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*) #2

declare dso_local i32 @debug_register(i8*, i32, i32, i32) #2

declare dso_local i64 @debug_register_view(i32, i32*) #2

declare dso_local i32 @debug_unregister(i32) #2

declare dso_local i32 @debug_set_level(i32, i32) #2

declare dso_local %struct.qdio_dbf_entry* @kzalloc(i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
