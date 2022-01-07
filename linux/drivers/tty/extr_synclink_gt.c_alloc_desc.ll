; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.slgt_desc*, %struct.slgt_desc*, i64, i32*, i32 }
%struct.slgt_desc = type { i32, i8* }

@DESC_LIST_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMABUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_desc(%struct.slgt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DESC_LIST_SIZE, align 4
  %10 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 4
  %12 = call i32* @pci_zalloc_consistent(i32 %8, i32 %9, i64* %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 5
  store i32* %12, i32** %14, align 8
  %15 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %191

22:                                               ; preds = %1
  %23 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.slgt_desc*
  %27 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 3
  store %struct.slgt_desc* %26, %struct.slgt_desc** %28, align 8
  %29 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to %struct.slgt_desc*
  %33 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %32, i64 %36
  %38 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 2
  store %struct.slgt_desc* %37, %struct.slgt_desc** %39, align 8
  %40 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %41 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %112, %22
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %47 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %115

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 16
  %56 = add i64 %52, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %59 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %58, i32 0, i32 3
  %60 = load %struct.slgt_desc*, %struct.slgt_desc** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %60, i64 %62
  %64 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %67 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %50
  %72 = load i32, i32* %5, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %75 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %74, i32 0, i32 3
  %76 = load %struct.slgt_desc*, %struct.slgt_desc** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %76, i64 %78
  %80 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %79, i32 0, i32 1
  store i8* %73, i8** %80, align 8
  br label %98

81:                                               ; preds = %50
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = load i32, i32* %4, align 4
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = mul i64 %86, 16
  %88 = add i64 %83, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %92 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %91, i32 0, i32 3
  %93 = load %struct.slgt_desc*, %struct.slgt_desc** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %93, i64 %95
  %97 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %96, i32 0, i32 1
  store i8* %90, i8** %97, align 8
  br label %98

98:                                               ; preds = %81, %71
  %99 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %100 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %99, i32 0, i32 3
  %101 = load %struct.slgt_desc*, %struct.slgt_desc** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %101, i64 %103
  %105 = load i32, i32* @DMABUFSIZE, align 4
  %106 = bitcast %struct.slgt_desc* %104 to { i32, i8* }*
  %107 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %106, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @set_desc_count(i32 %108, i8* %110, i32 %105)
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %4, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %44

115:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %187, %115
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %119 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %190

122:                                              ; preds = %116
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %126 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = add i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = mul i64 %130, 16
  %132 = add i64 %124, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %135 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %134, i32 0, i32 2
  %136 = load %struct.slgt_desc*, %struct.slgt_desc** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %136, i64 %138
  %140 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %139, i32 0, i32 0
  store i32 %133, i32* %140, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %143 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub i32 %144, 1
  %146 = icmp eq i32 %141, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %122
  %148 = load i32, i32* %5, align 4
  %149 = zext i32 %148 to i64
  %150 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %151 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 16
  %155 = add i64 %149, %154
  %156 = trunc i64 %155 to i32
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %159 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %158, i32 0, i32 2
  %160 = load %struct.slgt_desc*, %struct.slgt_desc** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %160, i64 %162
  %164 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %163, i32 0, i32 1
  store i8* %157, i8** %164, align 8
  br label %186

165:                                              ; preds = %122
  %166 = load i32, i32* %5, align 4
  %167 = zext i32 %166 to i64
  %168 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %169 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = add i32 %170, %171
  %173 = add i32 %172, 1
  %174 = zext i32 %173 to i64
  %175 = mul i64 %174, 16
  %176 = add i64 %167, %175
  %177 = trunc i64 %176 to i32
  %178 = call i8* @cpu_to_le32(i32 %177)
  %179 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %180 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %179, i32 0, i32 2
  %181 = load %struct.slgt_desc*, %struct.slgt_desc** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %181, i64 %183
  %185 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %184, i32 0, i32 1
  store i8* %178, i8** %185, align 8
  br label %186

186:                                              ; preds = %165, %147
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %4, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %116

190:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %19
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32* @pci_zalloc_consistent(i32, i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @set_desc_count(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
