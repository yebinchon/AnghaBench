; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_manage.c_shutdown_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_manage.c_shutdown_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)*, i32 }
%struct.xenbus_watch = type { i32 }
%struct.xenbus_transaction = type { i32 }

@shutting_down = common dso_local global i64 0, align 8
@SHUTDOWN_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@shutdown_handlers = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Ignoring shutdown request: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_watch*, i8*, i8*)* @shutdown_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_handler(%struct.xenbus_watch* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.xenbus_watch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xenbus_transaction, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xenbus_watch* %0, %struct.xenbus_watch** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* @shutting_down, align 8
  %12 = load i64, i64* @SHUTDOWN_INVALID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %94

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %71, %15
  %17 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %94

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @xenbus_read(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @XENBUS_IS_ERR_READ(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xenbus_transaction_end(i32 %31, i32 1)
  br label %94

33:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shutdown_handlers, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shutdown_handlers, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @strcmp(i8* %40, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %34

54:                                               ; preds = %49, %34
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shutdown_handlers, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xenbus_write(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @xenbus_transaction_end(i32 %65, i32 0)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @kfree(i8* %72)
  br label %16

74:                                               ; preds = %63
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shutdown_handlers, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %76)
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shutdown_handlers, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  br label %91

87:                                               ; preds = %74
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = load i64, i64* @SHUTDOWN_INVALID, align 8
  store i64 %90, i64* @shutting_down, align 8
  br label %91

91:                                               ; preds = %87, %79
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @kfree(i8* %92)
  br label %94

94:                                               ; preds = %91, %29, %20, %14
  ret void
}

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i64 @xenbus_read(i32, i8*, i8*, i32*) #1

declare dso_local i64 @XENBUS_IS_ERR_READ(i8*) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @xenbus_write(i32, i8*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
