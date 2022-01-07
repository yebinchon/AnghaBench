; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_ipato_add_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_ipato_add_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipato_entry = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.qeth_card*, i32)* @qeth_l3_dev_ipato_add_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_ipato_add_store(i8* %0, i64 %1, %struct.qeth_card* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_ipato_entry*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qeth_card* %2, %struct.qeth_card** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %19 = call i32 @qeth_l3_parse_ipatoe(i8* %16, i32 %17, i32* %18, i32* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %57

23:                                               ; preds = %4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.qeth_ipato_entry* @kzalloc(i32 12, i32 %24)
  store %struct.qeth_ipato_entry* %25, %struct.qeth_ipato_entry** %9, align 8
  %26 = load %struct.qeth_ipato_entry*, %struct.qeth_ipato_entry** %9, align 8
  %27 = icmp ne %struct.qeth_ipato_entry* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %57

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.qeth_ipato_entry*, %struct.qeth_ipato_entry** %9, align 8
  %34 = getelementptr inbounds %struct.qeth_ipato_entry, %struct.qeth_ipato_entry* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qeth_ipato_entry*, %struct.qeth_ipato_entry** %9, align 8
  %36 = getelementptr inbounds %struct.qeth_ipato_entry, %struct.qeth_ipato_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @QETH_PROT_IPV4, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 4, i32 16
  %44 = call i32 @memcpy(i32 %37, i32* %38, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.qeth_ipato_entry*, %struct.qeth_ipato_entry** %9, align 8
  %47 = getelementptr inbounds %struct.qeth_ipato_entry, %struct.qeth_ipato_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %49 = load %struct.qeth_ipato_entry*, %struct.qeth_ipato_entry** %9, align 8
  %50 = call i32 @qeth_l3_add_ipato_entry(%struct.qeth_card* %48, %struct.qeth_ipato_entry* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load %struct.qeth_ipato_entry*, %struct.qeth_ipato_entry** %9, align 8
  %55 = call i32 @kfree(%struct.qeth_ipato_entry* %54)
  br label %56

56:                                               ; preds = %53, %31
  br label %57

57:                                               ; preds = %56, %28, %22
  %58 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  br label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %6, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i64 [ %65, %63 ], [ %67, %66 ]
  %70 = trunc i64 %69 to i32
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qeth_l3_parse_ipatoe(i8*, i32, i32*, i32*) #1

declare dso_local %struct.qeth_ipato_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qeth_l3_add_ipato_entry(%struct.qeth_card*, %struct.qeth_ipato_entry*) #1

declare dso_local i32 @kfree(%struct.qeth_ipato_entry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
