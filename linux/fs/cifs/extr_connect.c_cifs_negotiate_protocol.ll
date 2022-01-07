; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_negotiate_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_negotiate_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.TCP_Server_Info*)* }

@ENOSYS = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@CifsGood = common dso_local global i64 0, align 8
@EHOSTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_negotiate_protocol(i32 %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %8, i32 0, i32 0
  %10 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  store %struct.TCP_Server_Info* %10, %struct.TCP_Server_Info** %7, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (%struct.TCP_Server_Info*)*, i32 (%struct.TCP_Server_Info*)** %14, align 8
  %16 = icmp ne i32 (%struct.TCP_Server_Info*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (i32, %struct.cifs_ses*)**
  %23 = load i32 (i32, %struct.cifs_ses*)*, i32 (i32, %struct.cifs_ses*)** %22, align 8
  %24 = icmp ne i32 (i32, %struct.cifs_ses*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %17
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TCP_Server_Info*)*, i32 (%struct.TCP_Server_Info*)** %32, align 8
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %35 = call i32 %33(%struct.TCP_Server_Info* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %68

38:                                               ; preds = %28
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %40 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (i32, %struct.cifs_ses*)**
  %44 = load i32 (i32, %struct.cifs_ses*)*, i32 (i32, %struct.cifs_ses*)** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %47 = call i32 %44(i32 %45, %struct.cifs_ses* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %38
  %51 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CifsNeedNegotiate, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i64, i64* @CifsGood, align 8
  %59 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %60 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EHOSTDOWN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %66

66:                                               ; preds = %64, %38
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %37, %25
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
