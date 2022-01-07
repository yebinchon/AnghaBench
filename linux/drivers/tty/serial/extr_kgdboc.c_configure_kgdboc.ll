; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_configure_kgdboc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_configure_kgdboc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tty_driver = type { i32 }
%struct.console = type { %struct.console*, %struct.tty_driver* (%struct.console*, i32*)* }

@ENODEV = common dso_local global i32 0, align 4
@config = common dso_local global i8* null, align 8
@kgdboc_io_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@kgdb_tty_driver = common dso_local global %struct.tty_driver* null, align 8
@kgdboc_use_kms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"kms,\00", align 1
@console_drivers = common dso_local global %struct.console* null, align 8
@kgdb_tty_line = common dso_local global i32 0, align 4
@configured = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @configure_kgdboc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_kgdboc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tty_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.console*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load i8*, i8** @config, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** @config, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i8*, i8** @config, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %0
  store i32 0, i32* %4, align 4
  br label %81

21:                                               ; preds = %14
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kgdboc_io_ops, i32 0, i32 0), align 4
  store %struct.tty_driver* null, %struct.tty_driver** @kgdb_tty_driver, align 8
  store i32 0, i32* @kgdboc_use_kms, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %27, i8** %5, align 8
  store i32 1, i32* @kgdboc_use_kms, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = call i64 @kgdboc_register_kbd(i8** %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %68

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.tty_driver* @tty_find_polling_driver(i8* %33, i32* %3)
  store %struct.tty_driver* %34, %struct.tty_driver** %2, align 8
  %35 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %36 = icmp ne %struct.tty_driver* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %81

38:                                               ; preds = %32
  %39 = load %struct.console*, %struct.console** @console_drivers, align 8
  store %struct.console* %39, %struct.console** %6, align 8
  br label %40

40:                                               ; preds = %61, %38
  %41 = load %struct.console*, %struct.console** %6, align 8
  %42 = icmp ne %struct.console* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load %struct.console*, %struct.console** %6, align 8
  %45 = getelementptr inbounds %struct.console, %struct.console* %44, i32 0, i32 1
  %46 = load %struct.tty_driver* (%struct.console*, i32*)*, %struct.tty_driver* (%struct.console*, i32*)** %45, align 8
  %47 = icmp ne %struct.tty_driver* (%struct.console*, i32*)* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.console*, %struct.console** %6, align 8
  %50 = getelementptr inbounds %struct.console, %struct.console* %49, i32 0, i32 1
  %51 = load %struct.tty_driver* (%struct.console*, i32*)*, %struct.tty_driver* (%struct.console*, i32*)** %50, align 8
  %52 = load %struct.console*, %struct.console** %6, align 8
  %53 = call %struct.tty_driver* %51(%struct.console* %52, i32* %7)
  %54 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %55 = icmp eq %struct.tty_driver* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kgdboc_io_ops, i32 0, i32 0), align 4
  br label %65

61:                                               ; preds = %56, %48, %43
  %62 = load %struct.console*, %struct.console** %6, align 8
  %63 = getelementptr inbounds %struct.console, %struct.console* %62, i32 0, i32 0
  %64 = load %struct.console*, %struct.console** %63, align 8
  store %struct.console* %64, %struct.console** %6, align 8
  br label %40

65:                                               ; preds = %60, %40
  %66 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  store %struct.tty_driver* %66, %struct.tty_driver** @kgdb_tty_driver, align 8
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* @kgdb_tty_line, align 4
  br label %68

68:                                               ; preds = %65, %31
  %69 = call i32 @kgdb_register_io_module(%struct.TYPE_4__* @kgdboc_io_ops)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %81

73:                                               ; preds = %68
  %74 = call i32 (...) @kgdb_register_nmi_console()
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %79

78:                                               ; preds = %73
  store i32 1, i32* @configured, align 4
  store i32 0, i32* %1, align 4
  br label %87

79:                                               ; preds = %77
  %80 = call i32 @kgdb_unregister_io_module(%struct.TYPE_4__* @kgdboc_io_ops)
  br label %81

81:                                               ; preds = %79, %72, %37, %20
  %82 = call i32 (...) @kgdboc_unregister_kbd()
  %83 = load i8*, i8** @config, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %84, align 1
  store i32 0, i32* @configured, align 4
  %85 = call i32 (...) @cleanup_kgdboc()
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %1, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @kgdboc_register_kbd(i8**) #1

declare dso_local %struct.tty_driver* @tty_find_polling_driver(i8*, i32*) #1

declare dso_local i32 @kgdb_register_io_module(%struct.TYPE_4__*) #1

declare dso_local i32 @kgdb_register_nmi_console(...) #1

declare dso_local i32 @kgdb_unregister_io_module(%struct.TYPE_4__*) #1

declare dso_local i32 @kgdboc_unregister_kbd(...) #1

declare dso_local i32 @cleanup_kgdboc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
