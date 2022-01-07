; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_nmi_poll_one_knock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_nmi_poll_one_knock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@kgdb_nmi_poll_one_knock.n = internal global i32 0, align 4
@kgdb_nmi_magic = common dso_local global i8* null, align 8
@dbg_io_ops = common dso_local global %struct.TYPE_2__* null, align 8
@NO_POLL_CHAR = common dso_local global i32 0, align 4
@kgdb_nmi_knock = common dso_local global i64 0, align 8
@kgdb_nmi_num_readers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0D%s %s to enter the debugger> %*s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Hit\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"<return>\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kgdb_nmi_poll_one_knock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_nmi_poll_one_knock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %6 = load i8*, i8** @kgdb_nmi_magic, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NO_POLL_CHAR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %84

18:                                               ; preds = %0
  %19 = load i64, i64* @kgdb_nmi_knock, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 1, i32* %1, align 4
  br label %84

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %2, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @kgdb_nmi_poll_one_knock.n, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %29, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load i32, i32* @kgdb_nmi_poll_one_knock.n, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = urem i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @kgdb_nmi_poll_one_knock.n, align 4
  %44 = load i32, i32* @kgdb_nmi_poll_one_knock.n, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  br label %84

47:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %49

48:                                               ; preds = %28
  store i32 0, i32* @kgdb_nmi_poll_one_knock.n, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49
  %51 = call i64 @atomic_read(i32* @kgdb_nmi_num_readers)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @kgdb_tty_recv(i32 %54)
  store i32 0, i32* %1, align 4
  br label %84

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 0, i32* %1, align 4
  br label %84

62:                                               ; preds = %56
  %63 = load i64, i64* @kgdb_nmi_knock, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %67 = load i64, i64* @kgdb_nmi_knock, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** %3, align 8
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %71 ]
  %74 = load i64, i64* %4, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %73, i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %81, %72
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %4, align 8
  %80 = icmp ne i64 %78, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %77

83:                                               ; preds = %77
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %83, %59, %53, %46, %27, %16
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kgdb_tty_recv(i32) #1

declare dso_local i32 @kdb_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
