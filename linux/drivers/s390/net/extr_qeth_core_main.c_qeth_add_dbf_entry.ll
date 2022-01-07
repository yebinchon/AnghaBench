; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_add_dbf_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_add_dbf_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64 }
%struct.qeth_dbf_entry = type { i32, i64, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"qcdbf\00", align 1
@debug_hex_ascii_view = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DBF_NAME_LEN = common dso_local global i32 0, align 4
@qeth_dbf_list_mutex = common dso_local global i32 0, align 4
@qeth_dbf_list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i8*)* @qeth_add_dbf_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_add_dbf_entry(%struct.qeth_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qeth_dbf_entry*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @debug_register(i8* %7, i32 2, i32 1, i32 8)
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @SETUP, align 4
  %17 = call i32 @QETH_DBF_TEXT_(i32 %16, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @debug_register_view(i64 %21, i32* @debug_hex_ascii_view)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %48

25:                                               ; preds = %18
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.qeth_dbf_entry* @kzalloc(i32 24, i32 %26)
  store %struct.qeth_dbf_entry* %27, %struct.qeth_dbf_entry** %6, align 8
  %28 = load %struct.qeth_dbf_entry*, %struct.qeth_dbf_entry** %6, align 8
  %29 = icmp ne %struct.qeth_dbf_entry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.qeth_dbf_entry*, %struct.qeth_dbf_entry** %6, align 8
  %33 = getelementptr inbounds %struct.qeth_dbf_entry, %struct.qeth_dbf_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @DBF_NAME_LEN, align 4
  %37 = call i32 @strncpy(i32 %34, i8* %35, i32 %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qeth_dbf_entry*, %struct.qeth_dbf_entry** %6, align 8
  %42 = getelementptr inbounds %struct.qeth_dbf_entry, %struct.qeth_dbf_entry* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = call i32 @mutex_lock(i32* @qeth_dbf_list_mutex)
  %44 = load %struct.qeth_dbf_entry*, %struct.qeth_dbf_entry** %6, align 8
  %45 = getelementptr inbounds %struct.qeth_dbf_entry, %struct.qeth_dbf_entry* %44, i32 0, i32 0
  %46 = call i32 @list_add(i32* %45, i32* @qeth_dbf_list)
  %47 = call i32 @mutex_unlock(i32* @qeth_dbf_list_mutex)
  store i32 0, i32* %3, align 4
  br label %56

48:                                               ; preds = %30, %24
  %49 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @debug_unregister(i64 %51)
  br label %53

53:                                               ; preds = %48, %15
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %31
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @debug_register(i8*, i32, i32, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i8*) #1

declare dso_local i64 @debug_register_view(i64, i32*) #1

declare dso_local %struct.qeth_dbf_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @debug_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
