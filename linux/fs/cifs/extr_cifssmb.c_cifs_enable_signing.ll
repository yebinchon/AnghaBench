; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_enable_signing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_enable_signing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_SIGN = common dso_local global i32 0, align 4
@CIFSSEC_MUST_SIGN = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Server requires signing, but it's disabled in SecurityFlags!\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Server does not support signing!\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Signing is enabled, and RDMA read/write will be disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_enable_signing(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %10 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %13 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %11, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %20, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @global_secflags, align 4
  %28 = load i32, i32* @CIFSSEC_MAY_SIGN, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @global_secflags, align 4
  %34 = load i32, i32* @CIFSSEC_MUST_SIGN, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CIFSSEC_MUST_SIGN, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  br label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @global_secflags, align 4
  %46 = load i32, i32* @CIFSSEC_MAY_SIGN, align 4
  %47 = and i32 %45, %46
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %43, %42 ], [ %47, %44 ]
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @VFS, align 4
  %57 = call i32 @cifs_dbg(i32 %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %90

60:                                               ; preds = %52
  %61 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %62 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @VFS, align 4
  %71 = call i32 @cifs_dbg(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %90

74:                                               ; preds = %66
  %75 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %76 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %63
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %79 = call i64 @cifs_rdma_enabled(%struct.TCP_Server_Info* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %83 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @VFS, align 4
  %88 = call i32 @cifs_dbg(i32 %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81, %77
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %69, %55
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i64 @cifs_rdma_enabled(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
