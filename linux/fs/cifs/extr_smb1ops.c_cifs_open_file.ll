; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_open_parms = type { %struct.TYPE_7__*, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CAP_NT_SMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_open_parms*, i32*, i32*)* @cifs_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_open_file(i32 %0, %struct.cifs_open_parms* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_open_parms*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_open_parms* %1, %struct.cifs_open_parms** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %11 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %10, i32 0, i32 6
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CAP_NT_SMBS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %23 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 6
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %26 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %29 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %32 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %35 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %38 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %44 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %49 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @cifs_remap(%struct.TYPE_7__* %50)
  %52 = call i32 @SMBLegacyOpen(i32 %21, %struct.TYPE_8__* %24, i32 %27, i32 %30, i32 %33, i32 %36, i32* %40, i32* %41, i32* %42, i32 %47, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %59

53:                                               ; preds = %4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @CIFS_open(i32 %54, %struct.cifs_open_parms* %55, i32* %56, i32* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @SMBLegacyOpen(i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.TYPE_7__*) #1

declare dso_local i32 @CIFS_open(i32, %struct.cifs_open_parms*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
