; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_setup_volume_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_setup_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32*, i32*, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Anonymous login\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Username: %s\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No username specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"CIFS mount error: iocharset %s not found\0A\00", align 1
@ELIBACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_setup_volume_info(%struct.smb_vol* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_vol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smb_vol* %0, %struct.smb_vol** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @cifs_parse_mount_options(i8* %11, i8* %12, %struct.smb_vol* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %82

20:                                               ; preds = %4
  %21 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %22 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* @FYI, align 4
  %27 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %29 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %33 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %51

34:                                               ; preds = %20
  %35 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %36 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @FYI, align 4
  %41 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %42 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  br label %50

45:                                               ; preds = %34
  %46 = load i32, i32* @VFS, align 4
  %47 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %82

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %53 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32* (...) @load_nls_default()
  %58 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %59 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  br label %80

60:                                               ; preds = %51
  %61 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %62 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32* @load_nls(i32* %63)
  %65 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %66 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %68 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load i32, i32* @VFS, align 4
  %73 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %74 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32* %75)
  %77 = load i32, i32* @ELIBACC, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %71, %45, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @cifs_parse_mount_options(i8*, i8*, %struct.smb_vol*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @load_nls_default(...) #1

declare dso_local i32* @load_nls(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
