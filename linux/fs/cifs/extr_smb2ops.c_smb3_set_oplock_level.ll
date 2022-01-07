; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_set_oplock_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_set_oplock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { i32, i32 }

@CIFS_CACHE_READ_FLG = common dso_local global i32 0, align 4
@CIFS_CACHE_RH_FLG = common dso_local global i32 0, align 4
@CIFS_CACHE_RHW_FLG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifsInodeInfo*, i32, i32, i32*)* @smb3_set_oplock_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb3_set_oplock_level(%struct.cifsInodeInfo* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %11 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @smb21_set_oplock_level(%struct.cifsInodeInfo* %13, i32 %14, i32 %15, i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %129

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CIFS_CACHE_READ_FLG, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %20
  %26 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %27 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CIFS_CACHE_READ_FLG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %34 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  store i32 1, i32* %39, align 4
  br label %87

40:                                               ; preds = %31, %25
  %41 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %42 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CIFS_CACHE_RH_FLG, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %49 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %47, %50
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  store i32 1, i32* %54, align 4
  br label %86

55:                                               ; preds = %46, %40
  %56 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %57 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CIFS_CACHE_RHW_FLG, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %64 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %62, %65
  %67 = icmp ugt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  store i32 1, i32* %69, align 4
  br label %85

70:                                               ; preds = %61, %55
  %71 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %72 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %78 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %76, %79
  %81 = icmp ugt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32*, i32** %8, align 8
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %75, %70
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %53
  br label %87

87:                                               ; preds = %86, %38
  br label %125

88:                                               ; preds = %20
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @CIFS_CACHE_RH_FLG, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %88
  %93 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %94 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CIFS_CACHE_RH_FLG, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %101 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub i32 %99, %102
  %104 = icmp ugt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32*, i32** %8, align 8
  store i32 1, i32* %106, align 4
  br label %123

107:                                              ; preds = %98, %92
  %108 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %109 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CIFS_CACHE_RHW_FLG, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %116 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub i32 %114, %117
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32*, i32** %8, align 8
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %113, %107
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %88
  br label %125

125:                                              ; preds = %124, %87
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %128 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %4
  ret void
}

declare dso_local i32 @smb21_set_oplock_level(%struct.cifsInodeInfo*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
