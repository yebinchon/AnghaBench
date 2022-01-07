; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_are_all_path_components_accessible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_are_all_path_components_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)* }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i32)* @cifs_are_all_path_components_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_are_all_path_components_accessible(%struct.TCP_Server_Info* %0, i32 %1, %struct.cifs_tcon* %2, %struct.cifs_sb_info* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %9, align 8
  store %struct.cifs_sb_info* %3, %struct.cifs_sb_info** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %17, align 4
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %23 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %22)
  store i8 %23, i8* %15, align 1
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %14, align 8
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %26 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %32 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %33 = call i32 %29(i32 %30, %struct.cifs_tcon* %31, %struct.cifs_sb_info* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %75, %74, %6
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i8*, i8** %14, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %15, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %14, align 8
  br label %38

48:                                               ; preds = %38
  %49 = load i8*, i8** %14, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %91

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i8*, i8** %14, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* %15, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br label %66

66:                                               ; preds = %59, %54
  %67 = phi i1 [ false, %54 ], [ %65, %59 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  br label %54

71:                                               ; preds = %66
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %17, align 4
  br label %34

75:                                               ; preds = %71
  %76 = load i8*, i8** %14, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %16, align 1
  %78 = load i8*, i8** %14, align 8
  store i8 0, i8* %78, align 1
  %79 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %80 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %86 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 %83(i32 %84, %struct.cifs_tcon* %85, %struct.cifs_sb_info* %86, i8* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i8, i8* %16, align 1
  %90 = load i8*, i8** %14, align 8
  store i8 %89, i8* %90, align 1
  br label %34

91:                                               ; preds = %52, %34
  %92 = load i32, i32* %13, align 4
  ret i32 %92
}

declare dso_local signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
