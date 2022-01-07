; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_get_entry_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_get_entry_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry_t = type { i32 }
%struct.file_dentry_t = type { i32, i32 }

@TYPE_UNUSED = common dso_local global i32 0, align 4
@TYPE_DELETED = common dso_local global i32 0, align 4
@TYPE_INVALID = common dso_local global i32 0, align 4
@TYPE_BITMAP = common dso_local global i32 0, align 4
@TYPE_UPCASE = common dso_local global i32 0, align 4
@TYPE_VOLUME = common dso_local global i32 0, align 4
@ATTR_SUBDIR = common dso_local global i32 0, align 4
@TYPE_DIR = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i32 0, align 4
@TYPE_CRITICAL_PRI = common dso_local global i32 0, align 4
@TYPE_GUID = common dso_local global i32 0, align 4
@TYPE_PADDING = common dso_local global i32 0, align 4
@TYPE_ACLTAB = common dso_local global i32 0, align 4
@TYPE_BENIGN_PRI = common dso_local global i32 0, align 4
@TYPE_STREAM = common dso_local global i32 0, align 4
@TYPE_EXTEND = common dso_local global i32 0, align 4
@TYPE_ACL = common dso_local global i32 0, align 4
@TYPE_CRITICAL_SEC = common dso_local global i32 0, align 4
@TYPE_BENIGN_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exfat_get_entry_type(%struct.dentry_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry_t*, align 8
  %4 = alloca %struct.file_dentry_t*, align 8
  store %struct.dentry_t* %0, %struct.dentry_t** %3, align 8
  %5 = load %struct.dentry_t*, %struct.dentry_t** %3, align 8
  %6 = bitcast %struct.dentry_t* %5 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %6, %struct.file_dentry_t** %4, align 8
  %7 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %8 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TYPE_UNUSED, align 4
  store i32 %12, i32* %2, align 4
  br label %142

13:                                               ; preds = %1
  %14 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %15 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @TYPE_DELETED, align 4
  store i32 %19, i32* %2, align 4
  br label %142

20:                                               ; preds = %13
  %21 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %22 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @TYPE_INVALID, align 4
  store i32 %26, i32* %2, align 4
  br label %142

27:                                               ; preds = %20
  %28 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %29 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 160
  br i1 %31, label %32, label %75

32:                                               ; preds = %27
  %33 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %34 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 129
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @TYPE_BITMAP, align 4
  store i32 %38, i32* %2, align 4
  br label %142

39:                                               ; preds = %32
  %40 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %41 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @TYPE_UPCASE, align 4
  store i32 %45, i32* %2, align 4
  br label %142

46:                                               ; preds = %39
  %47 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %48 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @TYPE_VOLUME, align 4
  store i32 %52, i32* %2, align 4
  br label %142

53:                                               ; preds = %46
  %54 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %55 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 133
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %60 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @GET16_A(i32 %61)
  %63 = load i32, i32* @ATTR_SUBDIR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @TYPE_DIR, align 4
  store i32 %67, i32* %2, align 4
  br label %142

68:                                               ; preds = %58
  %69 = load i32, i32* @TYPE_FILE, align 4
  store i32 %69, i32* %2, align 4
  br label %142

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* @TYPE_CRITICAL_PRI, align 4
  store i32 %74, i32* %2, align 4
  br label %142

75:                                               ; preds = %27
  %76 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %77 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 192
  br i1 %79, label %80, label %105

80:                                               ; preds = %75
  %81 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %82 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 160
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @TYPE_GUID, align 4
  store i32 %86, i32* %2, align 4
  br label %142

87:                                               ; preds = %80
  %88 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %89 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 161
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @TYPE_PADDING, align 4
  store i32 %93, i32* %2, align 4
  br label %142

94:                                               ; preds = %87
  %95 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %96 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 162
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @TYPE_ACLTAB, align 4
  store i32 %100, i32* %2, align 4
  br label %142

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* @TYPE_BENIGN_PRI, align 4
  store i32 %104, i32* %2, align 4
  br label %142

105:                                              ; preds = %75
  %106 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %107 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 224
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %112 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 192
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @TYPE_STREAM, align 4
  store i32 %116, i32* %2, align 4
  br label %142

117:                                              ; preds = %110
  %118 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %119 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 193
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @TYPE_EXTEND, align 4
  store i32 %123, i32* %2, align 4
  br label %142

124:                                              ; preds = %117
  %125 = load %struct.file_dentry_t*, %struct.file_dentry_t** %4, align 8
  %126 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 194
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @TYPE_ACL, align 4
  store i32 %130, i32* %2, align 4
  br label %142

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* @TYPE_CRITICAL_SEC, align 4
  store i32 %134, i32* %2, align 4
  br label %142

135:                                              ; preds = %105
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* @TYPE_BENIGN_SEC, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %133, %129, %122, %115, %103, %99, %92, %85, %73, %68, %66, %51, %44, %37, %25, %18, %11
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @GET16_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
